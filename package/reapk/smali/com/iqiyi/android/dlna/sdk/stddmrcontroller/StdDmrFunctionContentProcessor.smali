.class public Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrFunctionContentProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static synthetic $SWITCH_TABLE$com$iqiyi$android$dlna$sdk$stddmrcontroller$enums$FUNCTION:[I


# direct methods
.method static synthetic $SWITCH_TABLE$com$iqiyi$android$dlna$sdk$stddmrcontroller$enums$FUNCTION()[I
    .locals 3

    .prologue
    .line 16
    sget-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrFunctionContentProcessor;->$SWITCH_TABLE$com$iqiyi$android$dlna$sdk$stddmrcontroller$enums$FUNCTION:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->values()[Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETMEDIADURATION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_b

    :goto_1
    :try_start_1
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETMEDIAURI:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_a

    :goto_2
    :try_start_2
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETPOSITION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_9

    :goto_3
    :try_start_3
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETTRANSPORTSTATE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_8

    :goto_4
    :try_start_4
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->GETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_7

    :goto_5
    :try_start_5
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->PAUSE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_6

    :goto_6
    :try_start_6
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->PLAY:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_5

    :goto_7
    :try_start_7
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->PLAYMEDIA:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_4

    :goto_8
    :try_start_8
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->PUSHURL:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_3

    :goto_9
    :try_start_9
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->SEEK:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_2

    :goto_a
    :try_start_a
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->SETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_1

    :goto_b
    :try_start_b
    sget-object v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->STOP:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_0

    :goto_c
    sput-object v0, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrFunctionContentProcessor;->$SWITCH_TABLE$com$iqiyi$android$dlna$sdk$stddmrcontroller$enums$FUNCTION:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isStdDmrCommand(Ljava/lang/String;)Z
    .locals 5
    .param p0, "commandStr"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 20
    invoke-static {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v2

    .line 27
    :cond_1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 28
    .local v1, "json":Lorg/json/JSONObject;
    if-eqz v1, :cond_0

    const-string v3, "DLNA"

    const-string v4, "Flavor"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    if-eqz v3, :cond_0

    .line 34
    const/4 v2, 0x1

    goto :goto_0

    .line 37
    .end local v1    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v0

    .line 39
    .local v0, "e":Ljava/lang/Exception;
    goto :goto_0
.end method

.method public static processFunctionContent(Lorg/cybergarage/upnp/Device;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    .locals 21
    .param p0, "targetDevice"    # Lorg/cybergarage/upnp/Device;
    .param p1, "commandStr"    # Ljava/lang/String;

    .prologue
    .line 45
    new-instance v4, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    const/16 v17, 0x0

    const-string v18, ""

    sget-object v19, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_INVALID_FUNCTION_CONTENT:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v4, v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    .line 47
    .local v4, "actionResult":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    invoke-static/range {p1 .. p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v17

    if-eqz v17, :cond_0

    move-object/from16 v17, v4

    .line 194
    :goto_0
    return-object v17

    .line 56
    :cond_0
    :try_start_0
    new-instance v9, Lorg/json/JSONObject;

    move-object/from16 v0, p1

    invoke-direct {v9, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 57
    .local v9, "json":Lorg/json/JSONObject;
    const-string v17, "Content"

    move-object/from16 v0, v17

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    .line 58
    .local v5, "content":Lorg/json/JSONObject;
    if-eqz v5, :cond_1

    const-string v17, "DLNA"

    const-string v18, "Flavor"

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v17

    if-nez v17, :cond_2

    :cond_1
    move-object/from16 v17, v4

    .line 60
    goto :goto_0

    .line 63
    .end local v5    # "content":Lorg/json/JSONObject;
    .end local v9    # "json":Lorg/json/JSONObject;
    :catch_0
    move-exception v7

    .local v7, "e":Ljava/lang/Exception;
    move-object/from16 v17, v4

    .line 65
    goto :goto_0

    .line 68
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v5    # "content":Lorg/json/JSONObject;
    .restart local v9    # "json":Lorg/json/JSONObject;
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrControllerFactory;->getStdDmrControllerByDevice(Lorg/cybergarage/upnp/Device;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;

    move-result-object v6

    .line 70
    .local v6, "controller":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;
    if-nez v6, :cond_3

    .line 72
    new-instance v17, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    const/16 v18, 0x0

    const-string v19, ""

    sget-object v20, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_NO_TARGET_DEVICE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct/range {v17 .. v20}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    goto :goto_0

    .line 75
    :cond_3
    const-string v17, "Action"

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 81
    .local v3, "actionName":Ljava/lang/String;
    :try_start_1
    invoke-static {v3}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->valueOf(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v8

    .line 88
    .local v8, "function":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;
    if-nez v8, :cond_4

    .line 90
    new-instance v17, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    const/16 v18, 0x0

    const-string v19, ""

    sget-object v20, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_INVALID_FUNCTION_NAME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct/range {v17 .. v20}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    goto :goto_0

    .line 83
    .end local v8    # "function":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;
    :catch_1
    move-exception v7

    .line 85
    .restart local v7    # "e":Ljava/lang/Exception;
    new-instance v17, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    const/16 v18, 0x0

    const-string v19, ""

    sget-object v20, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_INVALID_FUNCTION_NAME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct/range {v17 .. v20}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    goto :goto_0

    .line 94
    .end local v7    # "e":Ljava/lang/Exception;
    .restart local v8    # "function":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;
    :cond_4
    invoke-static {}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrFunctionContentProcessor;->$SWITCH_TABLE$com$iqiyi$android$dlna$sdk$stddmrcontroller$enums$FUNCTION()[I

    move-result-object v17

    invoke-virtual {v8}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->ordinal()I

    move-result v18

    aget v17, v17, v18

    packed-switch v17, :pswitch_data_0

    .line 190
    new-instance v4, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .end local v4    # "actionResult":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    const/16 v17, 0x0

    invoke-virtual {v8}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->name()Ljava/lang/String;

    move-result-object v18

    sget-object v19, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_UNKNOW_FUNCTION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v4, v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    .restart local v4    # "actionResult":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    :goto_1
    move-object/from16 v17, v4

    .line 194
    goto/16 :goto_0

    .line 103
    :pswitch_0
    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->getMediaDuration()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v4

    .line 104
    goto :goto_1

    .line 106
    :pswitch_1
    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->getMediaUri()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v4

    .line 107
    goto :goto_1

    .line 112
    :pswitch_2
    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->getPosition()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v4

    .line 113
    goto :goto_1

    .line 115
    :pswitch_3
    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->getTransportState()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v4

    .line 116
    goto :goto_1

    .line 118
    :pswitch_4
    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->getVolume()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v4

    .line 119
    goto :goto_1

    .line 121
    :pswitch_5
    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->pause()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v4

    .line 122
    goto :goto_1

    .line 124
    :pswitch_6
    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->play()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v4

    .line 125
    goto :goto_1

    .line 127
    :pswitch_7
    invoke-virtual {v6}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->stop()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v4

    .line 128
    goto :goto_1

    .line 130
    :pswitch_8
    sget-object v17, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->PLAYMEDIA:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->getArgumentValues(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;Lorg/json/JSONObject;)Ljava/util/Vector;

    move-result-object v11

    .line 131
    .local v11, "playMediaArgumentValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    if-nez v11, :cond_5

    .line 133
    new-instance v4, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .end local v4    # "actionResult":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    const/16 v17, 0x0

    const-string v18, ""

    sget-object v19, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_INVALID_ARGUMENT_VALUES:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v4, v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    .line 134
    .restart local v4    # "actionResult":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    goto :goto_1

    .line 137
    :cond_5
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getMediaTypeByName(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    move-result-object v10

    .line 138
    .local v10, "mediaType":Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v11, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v11, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1, v10}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->playMedia(Ljava/lang/String;Ljava/lang/String;Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v4

    .line 140
    goto :goto_1

    .line 142
    .end local v10    # "mediaType":Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;
    .end local v11    # "playMediaArgumentValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :pswitch_9
    sget-object v17, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->PUSHURL:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->getArgumentValues(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;Lorg/json/JSONObject;)Ljava/util/Vector;

    move-result-object v13

    .line 143
    .local v13, "pushUrlArgumentValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    if-nez v13, :cond_6

    .line 145
    new-instance v4, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .end local v4    # "actionResult":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    const/16 v17, 0x0

    const-string v18, ""

    sget-object v19, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_INVALID_ARGUMENT_VALUES:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v4, v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    .line 146
    .restart local v4    # "actionResult":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    goto/16 :goto_1

    .line 149
    :cond_6
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    invoke-static/range {v17 .. v17}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getMediaTypeByName(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;

    move-result-object v10

    .line 150
    .restart local v10    # "mediaType":Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v13, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Ljava/lang/String;

    const/16 v18, 0x1

    move/from16 v0, v18

    invoke-virtual {v13, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1, v10}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->pushUrl(Ljava/lang/String;Ljava/lang/String;Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v4

    .line 152
    goto/16 :goto_1

    .line 154
    .end local v10    # "mediaType":Lcom/iqiyi/android/dlna/sdk/controlpoint/MediaType;
    .end local v13    # "pushUrlArgumentValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :pswitch_a
    sget-object v17, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->SEEK:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->getArgumentValues(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;Lorg/json/JSONObject;)Ljava/util/Vector;

    move-result-object v14

    .line 155
    .local v14, "seekArgumentValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    if-nez v14, :cond_7

    .line 157
    new-instance v4, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .end local v4    # "actionResult":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    const/16 v17, 0x0

    const-string v18, ""

    sget-object v19, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_INVALID_ARGUMENT_VALUES:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v4, v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    .line 158
    .restart local v4    # "actionResult":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    goto/16 :goto_1

    .line 161
    :cond_7
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 162
    .local v12, "positioninsecond":Ljava/lang/String;
    invoke-static {v12}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getPositionStringBySecondStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->seek(Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v4

    .line 164
    goto/16 :goto_1

    .line 178
    .end local v12    # "positioninsecond":Ljava/lang/String;
    .end local v14    # "seekArgumentValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    :pswitch_b
    sget-object v17, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->SETVOLUME:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;

    move-object/from16 v0, v17

    invoke-static {v0, v5}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;->getArgumentValues(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/FUNCTION;Lorg/json/JSONObject;)Ljava/util/Vector;

    move-result-object v15

    .line 179
    .local v15, "setVolumeArgumentValues":Ljava/util/Vector;, "Ljava/util/Vector<Ljava/lang/String;>;"
    if-nez v15, :cond_8

    .line 181
    new-instance v4, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    .end local v4    # "actionResult":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    const/16 v17, 0x0

    const-string v18, ""

    sget-object v19, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_INVALID_ARGUMENT_VALUES:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    move/from16 v0, v17

    move-object/from16 v1, v18

    move-object/from16 v2, v19

    invoke-direct {v4, v0, v1, v2}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    .line 182
    .restart local v4    # "actionResult":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    goto/16 :goto_1

    .line 185
    :cond_8
    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    .line 186
    .local v16, "volume":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->getVolumeByStr(Ljava/lang/String;)I

    move-result v17

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrController;->setVolume(I)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v4

    .line 188
    goto/16 :goto_1

    .line 94
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_7
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_b
        :pswitch_1
    .end packed-switch
.end method
