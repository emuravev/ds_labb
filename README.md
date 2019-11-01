#rs.status() - 1 node
{
	"set" : "rs0",
	"date" : ISODate("2019-11-01T13:13:04.318Z"),
	"myState" : 2,
	"term" : NumberLong(4),
	"heartbeatIntervalMillis" : NumberLong(2000),
	"optimes" : {
		"lastCommittedOpTime" : {
			"ts" : Timestamp(1572613897, 1),
			"t" : NumberLong(4)
		},
		"readConcernMajorityOpTime" : {
			"ts" : Timestamp(1572613897, 1),
			"t" : NumberLong(4)
		},
		"appliedOpTime" : {
			"ts" : Timestamp(1572613907, 1),
			"t" : NumberLong(4)
		},
		"durableOpTime" : {
			"ts" : Timestamp(1572613907, 1),
			"t" : NumberLong(4)
		}
	},
	"members" : [
		{
			"_id" : 0,
			"name" : "172.31.31.110:27017",
			"health" : 0,
			"state" : 8,
			"stateStr" : "(not reachable/healthy)",
			"uptime" : 0,
			"optime" : {
				"ts" : Timestamp(0, 0),
				"t" : NumberLong(-1)
			},
			"optimeDurable" : {
				"ts" : Timestamp(0, 0),
				"t" : NumberLong(-1)
			},
			"optimeDate" : ISODate("1970-01-01T00:00:00Z"),
			"optimeDurableDate" : ISODate("1970-01-01T00:00:00Z"),
			"lastHeartbeat" : ISODate("2019-11-01T13:12:57.798Z"),
			"lastHeartbeatRecv" : ISODate("1970-01-01T00:00:00Z"),
			"pingMs" : NumberLong(0),
			"lastHeartbeatMessage" : "Couldn't get a connection within the time limit",
			"configVersion" : -1
		},
		{
			"_id" : 1,
			"name" : "172.31.40.212:27017",
			"health" : 1,
			"state" : 2,
			"stateStr" : "SECONDARY",
			"uptime" : 778,
			"optime" : {
				"ts" : Timestamp(1572613907, 1),
				"t" : NumberLong(4)
			},
			"optimeDate" : ISODate("2019-11-01T13:11:47Z"),
			"infoMessage" : "could not find member to sync from",
			"configVersion" : 2,
			"self" : true
		},
		{
			"_id" : 2,
			"name" : "172.31.6.123:27017",
			"health" : 0,
			"state" : 8,
			"stateStr" : "(not reachable/healthy)",
			"uptime" : 0,
			"optime" : {
				"ts" : Timestamp(0, 0),
				"t" : NumberLong(-1)
			},
			"optimeDurable" : {
				"ts" : Timestamp(0, 0),
				"t" : NumberLong(-1)
			},
			"optimeDate" : ISODate("1970-01-01T00:00:00Z"),
			"optimeDurableDate" : ISODate("1970-01-01T00:00:00Z"),
			"lastHeartbeat" : ISODate("2019-11-01T13:12:51.046Z"),
			"lastHeartbeatRecv" : ISODate("2019-11-01T13:11:38.447Z"),
			"pingMs" : NumberLong(1),
			"lastHeartbeatMessage" : "Couldn't get a connection within the time limit",
			"configVersion" : -1
		}
	],
	"ok" : 1,
	"operationTime" : Timestamp(1572613907, 1),
	"$clusterTime" : {
		"clusterTime" : Timestamp(1572613907, 1),
		"signature" : {
			"hash" : BinData(0,"AAAAAAAAAAAAAAAAAAAAAAAAAAA="),
			"keyId" : NumberLong(0)
		}
	}
}

#rs.config() - 1 node

{
	"_id" : "rs0",
	"version" : 2,
	"protocolVersion" : NumberLong(1),
	"members" : [
		{
			"_id" : 0,
			"host" : "172.31.31.110:27017",
			"arbiterOnly" : false,
			"buildIndexes" : true,
			"hidden" : false,
			"priority" : 1,
			"tags" : {
				
			},
			"slaveDelay" : NumberLong(0),
			"votes" : 1
		},
		{
			"_id" : 1,
			"host" : "172.31.40.212:27017",
			"arbiterOnly" : false,
			"buildIndexes" : true,
			"hidden" : false,
			"priority" : 1,
			"tags" : {
				
			},
			"slaveDelay" : NumberLong(0),
			"votes" : 1
		},
		{
			"_id" : 2,
			"host" : "172.31.6.123:27017",
			"arbiterOnly" : false,
			"buildIndexes" : true,
			"hidden" : false,
			"priority" : 1,
			"tags" : {
				
			},
			"slaveDelay" : NumberLong(0),
			"votes" : 1
		}
	],
	"settings" : {
		"chainingAllowed" : true,
		"heartbeatIntervalMillis" : 2000,
		"heartbeatTimeoutSecs" : 10,
		"electionTimeoutMillis" : 10000,
		"catchUpTimeoutMillis" : -1,
		"catchUpTakeoverDelayMillis" : 30000,
		"getLastErrorModes" : {
			
		},
		"getLastErrorDefaults" : {
			"w" : 1,
			"wtimeout" : 0
		},
		"replicaSetId" : ObjectId("5dbc26badc0e53925a627890")
	}
}
