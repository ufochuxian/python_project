.class public Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrActionProcessor;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method protected static doAction(Lorg/cybergarage/upnp/Device;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;
    .locals 13
    .param p0, "targetDeivce"    # Lorg/cybergarage/upnp/Device;
    .param p1, "actionData"    # Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;

    .prologue
    const/4 v12, 0x0

    .line 23
    invoke-static {p0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isStdDmrDevice(Lorg/cybergarage/upnp/Device;)Z

    move-result v9

    if-nez v9, :cond_0

    .line 25
    new-instance v9, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    const-string v10, ""

    sget-object v11, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_NO_TARGET_DEVICE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v9, v12, v10, v11}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    .line 96
    :goto_0
    return-object v9

    .line 28
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;->getAction()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    move-result-object v9

    if-nez v9, :cond_2

    .line 30
    :cond_1
    new-instance v9, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    const-string v10, ""

    sget-object v11, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_PARAMETER_NO_ACTION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v9, v12, v10, v11}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    goto :goto_0

    .line 33
    :cond_2
    invoke-virtual {p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;->getAction()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    move-result-object v0

    .line 35
    .local v0, "action":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;
    invoke-static {p0, v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/StdDmrActionProcessor;->isActionUnavailable(Lorg/cybergarage/upnp/Device;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 37
    new-instance v9, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    const-string v10, ""

    sget-object v11, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_UNAVAILABLE_ACTION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v9, v12, v10, v11}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    goto :goto_0

    .line 40
    :cond_3
    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->getServiceTag()Ljava/lang/String;

    move-result-object v8

    .line 42
    .local v8, "serviceTag":Ljava/lang/String;
    invoke-static {v8}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/Util;->isEmpty(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 44
    new-instance v9, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    const-string v10, ""

    sget-object v11, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_PARAMETER_NO_SERVICE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v9, v12, v10, v11}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    goto :goto_0

    .line 47
    :cond_4
    invoke-virtual {p0, v8}, Lorg/cybergarage/upnp/Device;->getService(Ljava/lang/String;)Lorg/cybergarage/upnp/Service;

    move-result-object v5

    .line 49
    .local v5, "localService":Lorg/cybergarage/upnp/Service;
    if-nez v5, :cond_5

    .line 51
    new-instance v9, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->getServiceTag()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_UNAVAILABLE_SERVICE:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v9, v12, v10, v11}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    goto :goto_0

    .line 54
    :cond_5
    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->getActionTag()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v5, v9}, Lorg/cybergarage/upnp/Service;->getAction(Ljava/lang/String;)Lorg/cybergarage/upnp/Action;

    move-result-object v4

    .line 55
    .local v4, "localAction":Lorg/cybergarage/upnp/Action;
    if-nez v4, :cond_6

    .line 56
    new-instance v9, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->getActionTag()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_UNAVAILABLE_ACTION:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v9, v12, v10, v11}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    goto :goto_0

    .line 59
    :cond_6
    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->getArguments()Ljava/util/HashSet;

    move-result-object v2

    .line 61
    .local v2, "arguments":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;>;"
    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/util/HashSet;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_9

    .line 63
    invoke-virtual {p1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionContent;->getArgumentValues()Ljava/util/Hashtable;

    move-result-object v6

    .line 65
    .local v6, "mArgumentValues":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;Ljava/lang/String;>;"
    if-eqz v6, :cond_7

    invoke-virtual {v6}, Ljava/util/Hashtable;->isEmpty()Z

    move-result v9

    if-eqz v9, :cond_8

    .line 67
    :cond_7
    new-instance v9, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    const-string v10, ""

    sget-object v11, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_INVALID_ARGUMENT_VALUES:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v9, v12, v10, v11}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    goto/16 :goto_0

    .line 70
    :cond_8
    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_a

    .line 83
    .end local v6    # "mArgumentValues":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;Ljava/lang/String;>;"
    :cond_9
    invoke-virtual {v4}, Lorg/cybergarage/upnp/Action;->postControlAction()Z

    move-result v3

    .line 85
    .local v3, "isSuccess":Z
    if-nez v3, :cond_c

    .line 87
    new-instance v9, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->getActionTag()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4}, Lorg/cybergarage/upnp/Action;->getPostActionFailedReason()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    move-result-object v11

    invoke-direct {v9, v12, v10, v11}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    goto/16 :goto_0

    .line 70
    .end local v3    # "isSuccess":Z
    .restart local v6    # "mArgumentValues":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;Ljava/lang/String;>;"
    :cond_a
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    .line 72
    .local v1, "argument":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;
    invoke-virtual {v6, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_b

    .line 74
    new-instance v9, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->name()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->FAIL_INVALID_ARGUMENT_VALUES:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v9, v12, v10, v11}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    goto/16 :goto_0

    .line 78
    :cond_b
    invoke-virtual {v1}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->name()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v6, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    invoke-virtual {v4, v11, v9}, Lorg/cybergarage/upnp/Action;->setArgumentValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 89
    .end local v1    # "argument":Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;
    .end local v6    # "mArgumentValues":Ljava/util/Hashtable;, "Ljava/util/Hashtable<Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;Ljava/lang/String;>;"
    .restart local v3    # "isSuccess":Z
    :cond_c
    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->getReturnArgument()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    move-result-object v9

    if-nez v9, :cond_d

    .line 91
    new-instance v9, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    const/4 v10, 0x1

    const-string v11, ""

    sget-object v12, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;->SUCCESS:Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;

    invoke-direct {v9, v10, v11, v12}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;-><init>(ZLjava/lang/String;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/RESULT_DESCRIPTION;)V

    goto/16 :goto_0

    .line 95
    :cond_d
    invoke-virtual {v0}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->getReturnArgument()Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;

    move-result-object v9

    invoke-virtual {v9}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION_ARGUMENT;->name()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v9}, Lorg/cybergarage/upnp/Action;->getArgumentValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 96
    .local v7, "result":Ljava/lang/String;
    invoke-static {v0, v7}, Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;->checkResult(Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;Ljava/lang/String;)Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/data/ActionResult;

    move-result-object v9

    goto/16 :goto_0
.end method

.method private static isActionUnavailable(Lorg/cybergarage/upnp/Device;Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;)Z
    .locals 1
    .param p0, "targetDeivce"    # Lorg/cybergarage/upnp/Device;
    .param p1, "action"    # Lcom/iqiyi/android/dlna/sdk/stddmrcontroller/enums/ACTION;

    .prologue
    .line 101
    const/4 v0, 0x0

    return v0
.end method
