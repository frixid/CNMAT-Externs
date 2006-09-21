// Adrian Freed 2005,2006
// Copyright UC Regents. All Rights Reserved.
// Wavemaker (intended for constructing wavetables for oscillators~)

inlets=2;
outlets=2;
var phases = new Array();
var amplitudes = new Array();
const defblen = 64*1024;
var blen = defblen;
if (jsarguments.length>1)
{
	blen = jsarguments[1];
	if(blen<0 || blen >10000000)
		blen = defblen;
	// copy amplitude phase duples
	for(var j=0;j<(jsarguments.length-1)/2;j+=2)
	{
		amplitudes[j/2] = jsarguments[j+2];
		phases[j/2] = jsarguments[j+3];
	}
}
var rphases =0;

var out = new Array(blen);
function list()
{
	var l = arrayfromargs(arguments);

	if(this.inlet==1)
	{
		rphases=0;
		phases =l;
	}
	else
		amplitudes = l;
//post(l);
}
function randomphases()
{
	rphases=1;
}
function bang()
{
		var max = 0;
		var min = 0;
		var rms = 0;
		var v;
//post(phases,"\na ",amplitudes,"\n","\n");
		if(rphases || (phases.length!=amplitudes.length))
		{
			// randomize the phases
			for(var j=0;j<amplitudes.length;++j)
			{

				phases[j] = Math.random()*2*3.14159265358979323;
post(phases[j],"\n");
			}
		}
		for(var i=0;i<blen;++i)
		{
			v = 0;
			for(var j=0;j<amplitudes.length;++j)
				v += amplitudes[j]*Math.sin((j+1)*i*2*3.14159265358979323/blen+phases[j]);
//post(v,"\n");
			if(v>max)
				max = v;
			if(v<min)
				min=v;
			out[i] = v;
			rms += v*v;
		}
	if(-min>max)
			max = -min;
	post("RMS: ",Math.sqrt(rms/blen)/max,"\n");
		if(max>0)
		for(var i=0;i<blen;++i)
		{
			outlet(1,out[i]/max);
			outlet(0,i);
		}
	
}