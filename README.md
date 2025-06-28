# Next Two Trains Javascript Code

This is a simple javascript app for showing the next two trains from a schedule.  It shows the trains going in two directions (Kobe and Osaka).

 <p id="nexttrain"> </p>

    <script >

  const schedmatrix = [
    [4,"E"],[1],[2],[3],
[39,"L"],
[3,"L",23,"L",31,"L",43,"lE",45,"L",53,"L"],
[2,"L",9,"L",14,"L",22,"L",27,"ClE",30,"L",37,"L",42,"ClE",44,"L",52,"L",57,"ClE",59,"L"],
[7,"L",12,"ClE",14,"L",19,"lE",21,"L",24,"ClE",28,"L",33,"ClE",36,"L",40,"ClE",43,"L",47,"ClE",50,"lE",53,"L",58,"lE"],
[1,"L",6,"ClE",9,"L",14,"lE",17,"L",22,"lE",25,"L",30,"lE",32,"L",37,"lE",40,"L",45,"lE",48,"L",52,"lE",55,"L",59,"lE"],
[3,"L",7,"lE",10,"L",14,"lE",18,"L",22,"lE",25,"L",29,"lE",32,"L",37,"lE",39,"E",46,"lE",49,"L",56,"lE",59,"L"],
[6,"lE",8,"L",17,"lE",19,"L",26,"lE",28,"L",36,"lE",38,"L",46,"lE",48,"L",56,"lE",58,"L"],
[6,"lE",8,"L",16,"lE",18,"L",26,"lE",28,"L",36,"lE",38,"L",46,"lE",48,"L",56,"lE",58,"L"],
[6,"lE",8,"L",16,"lE",18,"L",26,"lE",28,"L",36,"lE",38,"L",46,"lE",48,"L",56,"lE",58,"L"],
[6,"lE",8,"L",16,"lE",18,"L",26,"lE",28,"L",36,"lE",38,"L",46,"lE",48,"L",56,"lE",58,"L"],
[6,"lE",8,"L",16,"lE",18,"L",26,"lE",28,"L",36,"lE",38,"L",46,"lE",48,"L",56,"lE",58,"L"],
[6,"lE",8,"L",16,"lE",18,"L",26,"lE",28,"L",36,"lE",38,"L",46,"lE",48,"L",56,"lE",58,"L"],
[6,"lE",8,"L",16,"lE",18,"L",26,"lE",28,"L",36,"lE",38,"L",46,"lE",48,"L",56,"lE",58,"L"],
[6,"lE",8,"L",16,"lE",18,"L",26,"lE",28,"L",36,"lE",38,"L",48,"SlE",50,"L",58,"SlE"],
[0,"RS",8,"SlE",10,"RS",18,"SlE",20,"RS",28,"SlE",30,"RS",38,"SlE",40,"RS",48,"SlE",50,"RS",58,"SlE"],
[0,"RS",8,"SlE",10,"RS",18,"SlE",20,"RS",28,"SlE",30,"RS",38,"SlE",40,"RS",48,"SlE",50,"RS",58,"SlE"],
[0,"RS",8,"SlE",10,"RS",18,"SlE",20,"RS",28,"SlE",30,"RS",38,"SlE",40,"RS",48,"SlE",50,"RS",58,"SlE"],
[0,"RS",8,"SlE",10,"RS",18,"SlE",20,"RS",30,"SlE",32,"L",42,"SlE",44,"L",54,"SlE",56,"L"],
[6,"SlE",8,"L",18,"SlE",20,"L",30,"SlE",32,"L",42,"SlE",44,"L",54,"SlE",56,"L"],
[6,"SlE",8,"L",18,"SlE",20,"L",33,"SlE",35,"L",49,"E"]
  ];
const osakaschedmatrix = [
    [0],[1],[2],[3],[4],
  [20,"L",43,"L"],
[6,"L",14,"SlE",23,"L",26,"ClE",38,"L",41,"ClE",49,"L",56,"ClE"],
[0,"L",4,"ClE",8,"RS",12,"ClE",16,"L",18,"ClE",22,"RS",26,"ClE",30,"L",33,"ClE",37,"RS",41,"ClE",45,"L",48,"ClE",52,"RS",56,"ClE"],
[0,"L",3,"ClE",7,"RS",12,"ClE",16,"L",18,"ClE",22,"RS",27,"ClE",31,"L",35,"ClE",39,"RS",43,"ClE",47,"L",52,"ClE"],
[0,"L",2,"ClE",10,"L",12,"ClE",20,"L",22,"ClE",30,"L",33,"lE",40,"L",42,"lE",50,"L",52,"lE"],
[0,"L",2,"lE",10,"L",12,"lE",20,"L",22,"lE",30,"L",32,"lE",40,"L",42,"lE",50,"L",52,"lE"],
[0,"L",2,"lE",10,"L",12,"lE",20,"L",22,"lE",30,"L",32,"lE",40,"L",42,"lE",50,"L",52,"lE"],
[0,"L",2,"lE",10,"L",12,"lE",20,"L",22,"lE",30,"L",32,"lE",40,"L",42,"lE",50,"L",52,"lE"],
[0,"L",2,"lE",10,"L",12,"lE",20,"L",22,"lE",30,"L",32,"lE",40,"L",42,"lE",50,"L",52,"lE"],
[0,"L",2,"lE",10,"L",12,"lE",20,"L",22,"lE",30,"L",32,"lE",40,"L",42,"lE",50,"L",52,"lE"],
[0,"L",2,"lE",10,"L",12,"lE",20,"L",22,"lE",30,"L",32,"lE",40,"L",42,"lE",50,"L",52,"lE"],
[0,"L",2,"lE",10,"L",12,"lE",20,"L",23,"lE",30,"L",33,"lE",41,"L",44,"SlE",51,"L",54,"SlE"],
[1,"L",4,"SlE",11,"L",14,"SlE",21,"L",24,"SlE",31,"L",34,"SlE",41,"L",44,"SlE",51,"L",54,"SlE"],
[1,"L",4,"SlE",11,"L",14,"SlE",21,"L",24,"SlE",31,"L",34,"SlE",41,"L",44,"SlE",51,"L",54,"SlE"],
[1,"L",4,"SlE",11,"L",14,"SlE",21,"L",24,"SlE",31,"L",34,"SlE",40,"L",43,"SlE",50,"L",53,"SlE"],
[0,"L",3,"SlE",10,"L",13,"SlE",20,"L",23,"SlE",30,"L",33,"SlE",40,"L",43,"SlE",52,"L",56,"SlE"],
[3,"L",8,"SlE",19,"L",22,"SlE",29,"L",32,"SlE",40,"L",43,"SlE",52,"L",55,"SlE"],
[4,"L",7,"SlE",16,"L",19,"SlE",28,"L",31,"SlE",39,"L",43,"SlE",52,"L",58,"SlE"],
[11,"L",14,"SlE",25,"L",28,"SlE",40,"L",43,"SlE"]
    ]
  
  function getTrain(hr,min,smatrix) {
    nextrainhour = hr
    schedrow = smatrix[nextrainhour]
    nexttrainind = schedrow.findIndex(element => element > min+5);
    if (nexttrainind === undefined) {
      nexttrainind = 0
      nextrainhour = hr + 1
      if (hr > 23) nextrainhour = 0
     
      schedrow = smatrix[nextrainhour]
      console.log("myVariable is undefined");
    }
    hourstr = ""+schedrow[nexttrainind]
    if (schedrow[nexttrainind] < 10) hourstr = "0"+schedrow[nexttrainind]
    nexttrain = nextrainhour+":"+hourstr+"("+schedrow[nexttrainind + 1]+")";

    nextnextind = nexttrainind+2
    if (schedrow[nextnextind] == undefined){
      nextnextind = 0
      nextrainhour = hr + 1
      if (hr > 23) nextrainhour = 0
     
      schedrow = smatrix[nextrainhour]
    }
    hourstr = ""+schedrow[nextnextind]
    if (schedrow[nextnextind] < 10) hourstr = "0"+schedrow[nextnextind]
    nexttrain2 = nextrainhour+":"+hourstr+"("+schedrow[nextnextind + 1]+")";

    return nexttrain +", "+nexttrain2
  }

  function scheduleCheck() {
    const now = new Date()
    const offset = now.getTimezoneOffset() * 60000 // Offset in milliseconds
    const localDate = new Date(now.getTime() - offset)
     let seconds = Math.floor( localDate / 1000 )
    let minutes = Math.floor( seconds / 60 )
    let hours =  Math.floor( minutes / 60 )
    let days = Math.floor( hours / 24 )

    hours %= 24
    minutes %= 60
    seconds %= 60
 
    kobestr = getTrain(hours,minutes,schedmatrix)
    osakastr = getTrain(hours,minutes,osakaschedmatrix)
    document.getElementById("nexttrain").innerHTML = "Kobe "+kobestr+"<br>Osaka "+osakastr
  
    setTimeout(scheduleCheck, 1000*60)

  }
    scheduleCheck();
    </script>
