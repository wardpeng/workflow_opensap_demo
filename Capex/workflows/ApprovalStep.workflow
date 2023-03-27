{
	"contents": {
		"50bf2bec-d6fc-4530-9aff-27c21a2fdede": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "approvalstep",
			"subject": "ApprovalStep",
			"businessKey": "${context.RequestId}",
			"customAttributes": [{
				"id": "RequestId",
				"label": "RequestId",
				"type": "string",
				"value": ""
			}, {
				"id": "Title",
				"label": "Title",
				"type": "string",
				"value": "${context.Title}"
			}, {
				"id": "Type",
				"label": "Type",
				"type": "string",
				"value": "${context.Investment.Type}"
			}, {
				"id": "TotalCost",
				"label": "TotalCost",
				"type": "string",
				"value": "${context.Investment.TotalCost}"
			}, {
				"id": "CAPEX",
				"label": "CAPEX",
				"type": "string",
				"value": "${context.Investment.CAPEX}"
			}, {
				"id": "OPEX",
				"label": "OPEX",
				"type": "string",
				"value": "${context.Investment.OPEX}"
			}, {
				"id": "ROI",
				"label": "ROI",
				"type": "string",
				"value": "${context.Investment.ROI}"
			}, {
				"id": "Currency",
				"label": "Currency",
				"type": "string",
				"value": "${context.Investment.Currency}"
			}, {
				"id": "approvalStatus",
				"label": "approvalStatus",
				"type": "string",
				"value": "${context.internal.approvalStatus}"
			}],
			"name": "ApprovalStep",
			"documentation": "Approval Step",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Start Approval Step"
				},
				"b3897ce3-a4b7-47ab-a544-df5bf9bc984d": {
					"name": "EndEvent2"
				},
				"bd8c8ebf-2ad6-44db-9d70-ef2c6bef9c88": {
					"name": "End Approval Step"
				}
			},
			"activities": {
				"4677da2b-4900-46b5-8a62-91f35e14b59e": {
					"name": "Prepare Approval"
				},
				"c88f1509-9f00-464c-8b7f-63bdd1b1b38b": {
					"name": "Get Approvers"
				},
				"60171ff4-796e-4bb7-9d72-c44ea0e4dcaf": {
					"name": "Process Approver Details"
				},
				"bf4becd6-cd28-4313-a95f-cf751d028b88": {
					"name": "Approval Needed?"
				},
				"f7ae3daa-09b6-4f5d-ace4-333a4a843aa8": {
					"name": "Approval Task"
				},
				"79635d54-67cf-4339-a69e-7801c960d9f7": {
					"name": "Process Approval Result"
				},
				"4bde1a0d-cf5c-4c26-bb4f-3c79de045bd6": {
					"name": "Approval Decision"
				},
				"d03e8f12-b4f6-4dae-9df9-d43fa7d094f1": {
					"name": "Rework Approval Request "
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"3fe77478-a8f7-4493-8dfd-9562eeae2207": {
					"name": "SequenceFlow2"
				},
				"9c4af243-8c69-44da-87c8-ce2517496a90": {
					"name": "SequenceFlow3"
				},
				"a1616d37-351e-4e9e-978b-67ec8557c3e1": {
					"name": "SequenceFlow4"
				},
				"1a743fc5-d401-41ba-a652-ea20006cea2d": {
					"name": "Yes"
				},
				"9763b5cc-a0ab-4879-9275-0307f4217be5": {
					"name": "SequenceFlow6"
				},
				"edc2f0b5-1e5c-424c-bab3-33876b9ca286": {
					"name": "SequenceFlow8"
				},
				"e49b78eb-c6e0-42d2-89b1-843771559ef0": {
					"name": "Rejected"
				},
				"cc07db36-1eb2-47e7-a8a8-d2fba3472e42": {
					"name": "SequenceFlow10"
				},
				"4e2050da-8b69-45fe-829d-a935a8d8ca8e": {
					"name": "Rework"
				},
				"9d3d21c0-13fb-45e2-b35f-d6a6c813d4c7": {
					"name": "Accepted"
				},
				"8fee50e4-552a-48b6-aa73-01f74f5c2cf7": {
					"name": "No"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Start Approval Step",
			"sampleContextRefs": {
				"551c5992-aace-4747-ac05-5663a8e999e6": {}
			}
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "4677da2b-4900-46b5-8a62-91f35e14b59e"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"f6cf180c-9268-42ea-a636-ba1f3960b434": {},
				"94739164-62f5-49c6-971a-04f3d6c4d529": {},
				"bd606056-9e9c-48c2-8e61-9810a503398f": {},
				"86592f12-d08a-4758-aab3-e687f6675a2c": {},
				"2522f9ef-7952-4846-bb21-19a469c6470d": {},
				"841d29be-fe54-4660-aa87-a35c2249a44f": {},
				"2a813ab7-3431-4d0b-bb32-3fc0d62f4a86": {},
				"4f9dee54-817b-41d5-aff3-bbb36345492b": {},
				"4fe23ffe-983b-4f76-99cf-842117e6cb8b": {},
				"e1f9696a-fe12-4b15-a2bb-2c4dedf919e5": {},
				"5060421d-0586-4841-bac8-7e7dd000e6b7": {},
				"a9a2c72b-c152-43ee-82ca-24a9134a9f22": {},
				"195848ae-755b-4789-8d54-89d3ddf3cb66": {},
				"73cebe0b-3796-4da1-9a8d-2ce30cad1dee": {},
				"6106b377-f1a5-4547-bfb1-0e5bb901d7d3": {},
				"4063b679-8c1f-4079-b5dc-f28687fbd85d": {},
				"d6300049-996f-42de-b968-2bc7047f12e4": {},
				"59edb4da-3b6a-45e7-83cf-55d8279989b0": {},
				"3c6e84ff-c9ed-46d4-9d6c-ad31bf1078c0": {},
				"3f0ea707-98fe-47c8-b343-0ee6834a0e04": {},
				"bac4e5b9-809b-4747-8e66-a6f8c1bcd936": {}
			}
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 26,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,42 94,42",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "f6cf180c-9268-42ea-a636-ba1f3960b434",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 1,
			"sequenceflow": 13,
			"startevent": 1,
			"endevent": 3,
			"usertask": 2,
			"servicetask": 1,
			"scripttask": 3,
			"exclusivegateway": 2
		},
		"4677da2b-4900-46b5-8a62-91f35e14b59e": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ApprovalStep/PrepareApproval.js",
			"id": "scripttask1",
			"name": "Prepare Approval"
		},
		"f6cf180c-9268-42ea-a636-ba1f3960b434": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 94,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "4677da2b-4900-46b5-8a62-91f35e14b59e"
		},
		"3fe77478-a8f7-4493-8dfd-9562eeae2207": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "4677da2b-4900-46b5-8a62-91f35e14b59e",
			"targetRef": "c88f1509-9f00-464c-8b7f-63bdd1b1b38b"
		},
		"94739164-62f5-49c6-971a-04f3d6c4d529": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,42 244,42",
			"sourceSymbol": "f6cf180c-9268-42ea-a636-ba1f3960b434",
			"targetSymbol": "bd606056-9e9c-48c2-8e61-9810a503398f",
			"object": "3fe77478-a8f7-4493-8dfd-9562eeae2207"
		},
		"c88f1509-9f00-464c-8b7f-63bdd1b1b38b": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BUSINESS_RULES",
			"destinationSource": "consumer",
			"path": "/rest/v2/rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.internal.rulesPayload}",
			"responseVariable": "${context.internal.ruleresult}",
			"id": "servicetask1",
			"name": "Get Approvers"
		},
		"bd606056-9e9c-48c2-8e61-9810a503398f": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 244,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "c88f1509-9f00-464c-8b7f-63bdd1b1b38b"
		},
		"9c4af243-8c69-44da-87c8-ce2517496a90": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "c88f1509-9f00-464c-8b7f-63bdd1b1b38b",
			"targetRef": "60171ff4-796e-4bb7-9d72-c44ea0e4dcaf"
		},
		"86592f12-d08a-4758-aab3-e687f6675a2c": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "344,42 394,42",
			"sourceSymbol": "bd606056-9e9c-48c2-8e61-9810a503398f",
			"targetSymbol": "2522f9ef-7952-4846-bb21-19a469c6470d",
			"object": "9c4af243-8c69-44da-87c8-ce2517496a90"
		},
		"60171ff4-796e-4bb7-9d72-c44ea0e4dcaf": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ApprovalStep/ProcessApproverDetails.js",
			"id": "scripttask2",
			"name": "Process Approver Details"
		},
		"2522f9ef-7952-4846-bb21-19a469c6470d": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 394,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "60171ff4-796e-4bb7-9d72-c44ea0e4dcaf"
		},
		"a1616d37-351e-4e9e-978b-67ec8557c3e1": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "60171ff4-796e-4bb7-9d72-c44ea0e4dcaf",
			"targetRef": "bf4becd6-cd28-4313-a95f-cf751d028b88"
		},
		"841d29be-fe54-4660-aa87-a35c2249a44f": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "494,42 544,42",
			"sourceSymbol": "2522f9ef-7952-4846-bb21-19a469c6470d",
			"targetSymbol": "2a813ab7-3431-4d0b-bb32-3fc0d62f4a86",
			"object": "a1616d37-351e-4e9e-978b-67ec8557c3e1"
		},
		"bf4becd6-cd28-4313-a95f-cf751d028b88": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Approval Needed?",
			"default": "8fee50e4-552a-48b6-aa73-01f74f5c2cf7"
		},
		"2a813ab7-3431-4d0b-bb32-3fc0d62f4a86": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 544,
			"y": 21,
			"object": "bf4becd6-cd28-4313-a95f-cf751d028b88"
		},
		"1a743fc5-d401-41ba-a652-ea20006cea2d": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.internal.step.isRequired}",
			"id": "sequenceflow5",
			"name": "Yes",
			"sourceRef": "bf4becd6-cd28-4313-a95f-cf751d028b88",
			"targetRef": "f7ae3daa-09b6-4f5d-ace4-333a4a843aa8"
		},
		"4f9dee54-817b-41d5-aff3-bbb36345492b": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "586,42 636,42",
			"sourceSymbol": "2a813ab7-3431-4d0b-bb32-3fc0d62f4a86",
			"targetSymbol": "4fe23ffe-983b-4f76-99cf-842117e6cb8b",
			"object": "1a743fc5-d401-41ba-a652-ea20006cea2d"
		},
		"f7ae3daa-09b6-4f5d-ace4-333a4a843aa8": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for Capital Expenditure Request \"${context.Title}\" in your role as ${context.role}",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.internal.step.approver.UserId}",
			"recipientGroups": "${context.internal.step.approver.GroupId}",
			"formReference": "/forms/ApprovalStep/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Approval Task"
		},
		"4fe23ffe-983b-4f76-99cf-842117e6cb8b": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 636,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "f7ae3daa-09b6-4f5d-ace4-333a4a843aa8"
		},
		"9763b5cc-a0ab-4879-9275-0307f4217be5": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "f7ae3daa-09b6-4f5d-ace4-333a4a843aa8",
			"targetRef": "79635d54-67cf-4339-a69e-7801c960d9f7"
		},
		"e1f9696a-fe12-4b15-a2bb-2c4dedf919e5": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "736,42 786,42",
			"sourceSymbol": "4fe23ffe-983b-4f76-99cf-842117e6cb8b",
			"targetSymbol": "5060421d-0586-4841-bac8-7e7dd000e6b7",
			"object": "9763b5cc-a0ab-4879-9275-0307f4217be5"
		},
		"79635d54-67cf-4339-a69e-7801c960d9f7": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ApprovalStep/ProcessApprovalResult.js",
			"id": "scripttask3",
			"name": "Process Approval Result"
		},
		"5060421d-0586-4841-bac8-7e7dd000e6b7": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 786,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "79635d54-67cf-4339-a69e-7801c960d9f7"
		},
		"b3897ce3-a4b7-47ab-a544-df5bf9bc984d": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "EndEvent2",
			"eventDefinitions": {
				"7c004345-0248-4e12-ba3b-abf3e2df924f": {}
			}
		},
		"7c004345-0248-4e12-ba3b-abf3e2df924f": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"a9a2c72b-c152-43ee-82ca-24a9134a9f22": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 1028,
			"y": 24.5,
			"width": 35,
			"height": 35,
			"object": "b3897ce3-a4b7-47ab-a544-df5bf9bc984d"
		},
		"edc2f0b5-1e5c-424c-bab3-33876b9ca286": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow8",
			"name": "SequenceFlow8",
			"sourceRef": "79635d54-67cf-4339-a69e-7801c960d9f7",
			"targetRef": "4bde1a0d-cf5c-4c26-bb4f-3c79de045bd6"
		},
		"195848ae-755b-4789-8d54-89d3ddf3cb66": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "886,42 936,42",
			"sourceSymbol": "5060421d-0586-4841-bac8-7e7dd000e6b7",
			"targetSymbol": "73cebe0b-3796-4da1-9a8d-2ce30cad1dee",
			"object": "edc2f0b5-1e5c-424c-bab3-33876b9ca286"
		},
		"4bde1a0d-cf5c-4c26-bb4f-3c79de045bd6": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Approval Decision",
			"default": "e49b78eb-c6e0-42d2-89b1-843771559ef0"
		},
		"73cebe0b-3796-4da1-9a8d-2ce30cad1dee": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 936,
			"y": 21,
			"object": "4bde1a0d-cf5c-4c26-bb4f-3c79de045bd6"
		},
		"e49b78eb-c6e0-42d2-89b1-843771559ef0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "Rejected",
			"sourceRef": "4bde1a0d-cf5c-4c26-bb4f-3c79de045bd6",
			"targetRef": "b3897ce3-a4b7-47ab-a544-df5bf9bc984d"
		},
		"6106b377-f1a5-4547-bfb1-0e5bb901d7d3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "978,42 1028,42",
			"sourceSymbol": "73cebe0b-3796-4da1-9a8d-2ce30cad1dee",
			"targetSymbol": "a9a2c72b-c152-43ee-82ca-24a9134a9f22",
			"object": "e49b78eb-c6e0-42d2-89b1-843771559ef0"
		},
		"d03e8f12-b4f6-4dae-9df9-d43fa7d094f1": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Rework required for CapEx Request \"${context.Title}\"",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.Requester.UserId}, ${info.startedBy}",
			"formReference": "/forms/ApprovalStep/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask2",
			"name": "Rework Approval Request "
		},
		"4063b679-8c1f-4079-b5dc-f28687fbd85d": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 94,
			"y": -132,
			"width": 100,
			"height": 60,
			"object": "d03e8f12-b4f6-4dae-9df9-d43fa7d094f1"
		},
		"cc07db36-1eb2-47e7-a8a8-d2fba3472e42": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "d03e8f12-b4f6-4dae-9df9-d43fa7d094f1",
			"targetRef": "4677da2b-4900-46b5-8a62-91f35e14b59e"
		},
		"d6300049-996f-42de-b968-2bc7047f12e4": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "144,-102 144,36",
			"sourceSymbol": "4063b679-8c1f-4079-b5dc-f28687fbd85d",
			"targetSymbol": "f6cf180c-9268-42ea-a636-ba1f3960b434",
			"object": "cc07db36-1eb2-47e7-a8a8-d2fba3472e42"
		},
		"4e2050da-8b69-45fe-829d-a935a8d8ca8e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"rework\"}",
			"id": "sequenceflow11",
			"name": "Rework",
			"sourceRef": "4bde1a0d-cf5c-4c26-bb4f-3c79de045bd6",
			"targetRef": "d03e8f12-b4f6-4dae-9df9-d43fa7d094f1"
		},
		"59edb4da-3b6a-45e7-83cf-55d8279989b0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "956,42 956,-102 144,-102",
			"sourceSymbol": "73cebe0b-3796-4da1-9a8d-2ce30cad1dee",
			"targetSymbol": "4063b679-8c1f-4079-b5dc-f28687fbd85d",
			"object": "4e2050da-8b69-45fe-829d-a935a8d8ca8e"
		},
		"bd8c8ebf-2ad6-44db-9d70-ef2c6bef9c88": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent3",
			"name": "End Approval Step"
		},
		"3c6e84ff-c9ed-46d4-9d6c-ad31bf1078c0": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 935.5,
			"y": 162.5,
			"width": 35,
			"height": 35,
			"object": "bd8c8ebf-2ad6-44db-9d70-ef2c6bef9c88"
		},
		"9d3d21c0-13fb-45e2-b35f-d6a6c813d4c7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"approve\"}",
			"id": "sequenceflow12",
			"name": "Accepted",
			"sourceRef": "4bde1a0d-cf5c-4c26-bb4f-3c79de045bd6",
			"targetRef": "bd8c8ebf-2ad6-44db-9d70-ef2c6bef9c88"
		},
		"3f0ea707-98fe-47c8-b343-0ee6834a0e04": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "957,42 957,173",
			"sourceSymbol": "73cebe0b-3796-4da1-9a8d-2ce30cad1dee",
			"targetSymbol": "3c6e84ff-c9ed-46d4-9d6c-ad31bf1078c0",
			"object": "9d3d21c0-13fb-45e2-b35f-d6a6c813d4c7"
		},
		"8fee50e4-552a-48b6-aa73-01f74f5c2cf7": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow13",
			"name": "No",
			"sourceRef": "bf4becd6-cd28-4313-a95f-cf751d028b88",
			"targetRef": "bd8c8ebf-2ad6-44db-9d70-ef2c6bef9c88"
		},
		"bac4e5b9-809b-4747-8e66-a6f8c1bcd936": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "565,62.5 565,180 953,180",
			"sourceSymbol": "2a813ab7-3431-4d0b-bb32-3fc0d62f4a86",
			"targetSymbol": "3c6e84ff-c9ed-46d4-9d6c-ad31bf1078c0",
			"object": "8fee50e4-552a-48b6-aa73-01f74f5c2cf7"
		},
		"551c5992-aace-4747-ac05-5663a8e999e6": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/ApprovalStep/CapexSampleStartPayload.json",
			"id": "default-start-context"
		}
	}
}