.class Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    .prologue
    .line 191
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 19
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 200
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v14

    invoke-static {v13, v14}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$302(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;I)I

    .line 201
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v3

    .line 202
    .local v3, "accountCenter":Lcom/jiliguala/niuwa/logic/login/a;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$300(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)I

    move-result v13

    sparse-switch v13, :sswitch_data_0

    .line 363
    :cond_0
    :goto_0
    return-void

    .line 204
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->isAdded()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 205
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 206
    .local v9, "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v13, "Type"

    const-string v14, "review"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v13

    const-string v14, "Setting Action"

    .line 208
    invoke-virtual {v13, v14, v9}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 209
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/g;->I()Z

    move-result v13

    if-eqz v13, :cond_1

    .line 210
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    const-string v14, "com.jiliguala.niuwa"

    invoke-static {v13, v14}, Lcom/jiliguala/niuwa/common/util/d;->b(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_0

    .line 211
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/jiliguala/niuwa/common/util/d;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 214
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/jiliguala/niuwa/common/util/d;->a(Landroid/content/Context;)V

    goto :goto_0

    .line 219
    .end local v9    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_1
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 220
    .restart local v9    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v13, "Type"

    const-string v14, "feedback"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v13

    const-string v14, "Setting Action"

    .line 222
    invoke-virtual {v13, v14, v9}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 224
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$400(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V

    goto :goto_0

    .line 227
    .end local v9    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->isAdded()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 228
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 229
    .restart local v9    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v13, "Type"

    const-string v14, "about"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v13

    const-string v14, "Setting Action"

    invoke-virtual {v13, v14, v9}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 231
    new-instance v2, Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    const-class v14, Lcom/jiliguala/niuwa/module/aboutus/AboutUsActivity;

    invoke-direct {v2, v13, v14}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 232
    .local v2, "aboutUsIntent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v13, v2}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->startActivity(Landroid/content/Intent;)V

    .line 233
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    const v14, 0x7f01001f

    const v15, 0x7f010014

    invoke-virtual {v13, v14, v15}, Landroid/support/v4/app/FragmentActivity;->overridePendingTransition(II)V

    goto/16 :goto_0

    .line 237
    .end local v2    # "aboutUsIntent":Landroid/content/Intent;
    .end local v9    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$500(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V

    goto/16 :goto_0

    .line 240
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$600(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V

    goto/16 :goto_0

    .line 243
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->isAdded()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 244
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-virtual {v13}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    goto/16 :goto_0

    .line 247
    :sswitch_6
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 248
    .restart local v9    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v13, "Type"

    const-string v14, "share"

    invoke-interface {v9, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    invoke-static {}, Lcom/jiliguala/niuwa/logic/a/b;->a()Lcom/jiliguala/niuwa/logic/a/b;

    move-result-object v13

    const-string v14, "Setting Action"

    .line 250
    invoke-virtual {v13, v14, v9}, Lcom/jiliguala/niuwa/logic/a/b;->a(Ljava/lang/String;Ljava/util/Map;)V

    .line 251
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$700(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V

    goto/16 :goto_0

    .line 254
    .end local v9    # "mapAmp":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :sswitch_7
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v13

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v13

    if-nez v13, :cond_2

    .line 255
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->isAdded()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 256
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    const v14, 0x7f0f0119

    invoke-static {v13, v14}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$800(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;I)V

    goto/16 :goto_0

    .line 259
    :cond_2
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->isAdded()Z

    move-result v13

    if-eqz v13, :cond_0

    .line 260
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->I()Z

    move-result v13

    if-eqz v13, :cond_3

    .line 261
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->n()Z

    move-result v13

    if-nez v13, :cond_4

    .line 262
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    invoke-static {v13}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPhoneInfoCompletion(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v8

    .line 264
    .local v8, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    const/16 v14, 0x2009

    invoke-virtual {v13, v8, v14}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 268
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_3
    invoke-virtual {v3}, Lcom/jiliguala/niuwa/logic/login/a;->n()Z

    move-result v13

    if-nez v13, :cond_4

    .line 271
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v13

    const v14, 0x7f0f0155

    const-string v15, "REGISTER_ADD_PERSONL_INFO"

    invoke-static {v13, v14, v15}, Lcom/jiliguala/niuwa/module/onboading/OnBoardingIntentHelper;->makeIntentForPhoneRequiredStep(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 272
    .restart local v8    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    const/16 v14, 0x2009

    invoke-virtual {v13, v8, v14}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto/16 :goto_0

    .line 276
    .end local v8    # "intent":Landroid/content/Intent;
    :cond_4
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$900(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V

    goto/16 :goto_0

    .line 281
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v13

    invoke-static {v13}, Lcom/jiliguala/niuwa/common/a/k;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/a/k;

    move-result-object v7

    .line 282
    .local v7, "fragment":Lcom/jiliguala/niuwa/common/a/k;
    invoke-static {}, Lcom/jiliguala/niuwa/logic/r/b;->a()Lcom/jiliguala/niuwa/logic/r/b;

    move-result-object v12

    .line 283
    .local v12, "videoTimeCtrlUnit":Lcom/jiliguala/niuwa/logic/r/b;
    if-nez v7, :cond_5

    .line 284
    const-string v13, "PREFS_KEY_VIDEO_CUR_TIME_RECORD"

    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/jiliguala/niuwa/common/util/t;->c(Ljava/lang/String;I)I

    move-result v11

    .line 285
    .local v11, "videoCurTimeRecord":I
    int-to-long v14, v11

    invoke-static {v14, v15}, Lcom/jiliguala/niuwa/module/album/multi_image_selector/utils/TimeUtils;->secToMin(J)I

    move-result v11

    .line 286
    new-instance v13, Lcom/jiliguala/niuwa/common/a/k$b;

    invoke-direct {v13}, Lcom/jiliguala/niuwa/common/a/k$b;-><init>()V

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    const v15, 0x7f0f026e

    invoke-virtual {v14, v15}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getString(I)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/jiliguala/niuwa/common/a/k$b;->a(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    const v15, 0x7f0f026d

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    .line 287
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    aput-object v18, v16, v17

    invoke-virtual/range {v14 .. v16}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/jiliguala/niuwa/common/a/k$b;->b(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v13

    sget-object v14, Lcom/jiliguala/niuwa/logic/r/b;->c:[Ljava/lang/String;

    .line 288
    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/jiliguala/niuwa/common/a/k$b;->a(Ljava/util/List;)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v13

    const/16 v14, 0x11

    .line 289
    invoke-virtual {v13, v14}, Lcom/jiliguala/niuwa/common/a/k$b;->b(I)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v13

    const/4 v14, 0x1

    .line 290
    invoke-virtual {v13, v14}, Lcom/jiliguala/niuwa/common/a/k$b;->a(Z)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v13

    sget-object v14, Lcom/jiliguala/niuwa/logic/r/b;->d:[I

    .line 291
    invoke-virtual {v12}, Lcom/jiliguala/niuwa/logic/r/b;->g()I

    move-result v15

    invoke-static {v14, v15}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v14

    invoke-virtual {v13, v14}, Lcom/jiliguala/niuwa/common/a/k$b;->a(I)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v13

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    .line 292
    invoke-static {}, Lcom/jiliguala/niuwa/common/util/xutils/util/m;->a()I

    move-result v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ""

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/jiliguala/niuwa/common/a/k$b;->c(Ljava/lang/String;)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v13

    const/4 v14, 0x1

    .line 293
    invoke-virtual {v13, v14}, Lcom/jiliguala/niuwa/common/a/k$b;->b(Z)Lcom/jiliguala/niuwa/common/a/k$b;

    move-result-object v6

    .line 295
    .local v6, "config":Lcom/jiliguala/niuwa/common/a/k$b;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v13

    invoke-static {v13, v6}, Lcom/jiliguala/niuwa/common/a/k;->a(Landroid/support/v4/app/ag;Lcom/jiliguala/niuwa/common/a/k$b;)Lcom/jiliguala/niuwa/common/a/k;

    move-result-object v7

    .line 297
    .end local v6    # "config":Lcom/jiliguala/niuwa/common/a/k$b;
    .end local v11    # "videoCurTimeRecord":I
    :cond_5
    new-instance v13, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10$1;

    move-object/from16 v0, p0

    invoke-direct {v13, v0, v12}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10$1;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;Lcom/jiliguala/niuwa/logic/r/b;)V

    invoke-virtual {v7, v13}, Lcom/jiliguala/niuwa/common/a/k;->a(Lcom/jiliguala/niuwa/common/a/k$a;)V

    .line 323
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v13

    invoke-virtual {v7, v13}, Lcom/jiliguala/niuwa/common/a/k;->b(Landroid/support/v4/app/ag;)V

    goto/16 :goto_0

    .line 326
    .end local v7    # "fragment":Lcom/jiliguala/niuwa/common/a/k;
    .end local v12    # "videoTimeCtrlUnit":Lcom/jiliguala/niuwa/logic/r/b;
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-static {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->access$1100(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;)V

    goto/16 :goto_0

    .line 329
    :sswitch_a
    sget-boolean v13, Lcom/jiliguala/niuwa/MyApplication;->isPrepareRes:Z

    if-eqz v13, :cond_6

    .line 330
    const-string v13, "\u4e0b\u8f7d\u89e3\u538b\u8fc7\u7a0b\u4e2d\uff0c\u8bf7\u7a0d\u540e\u6e05\u7406\u8d44\u6e90"

    invoke-static {v13}, Lcom/jiliguala/niuwa/services/SystemMsgService;->a(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 333
    :cond_6
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v13

    invoke-static {v13}, Lcom/jiliguala/niuwa/common/widget/d;->a(Landroid/support/v4/app/ag;)Lcom/jiliguala/niuwa/common/widget/d;

    move-result-object v10

    .line 334
    .local v10, "standardExitFragment":Lcom/jiliguala/niuwa/common/widget/d;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 335
    .local v5, "bundle":Landroid/os/Bundle;
    const-string v13, "ALERT_TEXT"

    const-string v14, "\u786e\u5b9a\u8981\u7acb\u523b\u5f00\u59cb\u6e05\u7406\u4e48\uff1f"

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 336
    const-string v13, "CONFIRM_TEXT"

    const-string v14, "\u786e\u5b9a"

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 337
    const-string v13, "CANCLE_TEXT"

    const-string v14, "\u53d6\u6d88"

    invoke-virtual {v5, v13, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 338
    invoke-virtual {v10}, Lcom/jiliguala/niuwa/common/widget/d;->isAdded()Z

    move-result v13

    if-eqz v13, :cond_8

    .line 339
    invoke-virtual {v10}, Lcom/jiliguala/niuwa/common/widget/d;->getArguments()Landroid/os/Bundle;

    move-result-object v4

    .line 340
    .local v4, "arguments":Landroid/os/Bundle;
    if-eqz v4, :cond_7

    .line 341
    invoke-virtual {v4}, Landroid/os/Bundle;->clear()V

    .line 342
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 347
    .end local v4    # "arguments":Landroid/os/Bundle;
    :cond_7
    :goto_1
    new-instance v13, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10$2;

    move-object/from16 v0, p0

    invoke-direct {v13, v0}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10$2;-><init>(Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;)V

    invoke-virtual {v10, v13}, Lcom/jiliguala/niuwa/common/widget/d;->a(Lcom/jiliguala/niuwa/common/widget/d$a;)V

    .line 360
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment$10;->a:Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;

    invoke-virtual {v13}, Lcom/jiliguala/niuwa/module/settings/fragment/SettingMainPageFragment;->getChildFragmentManager()Landroid/support/v4/app/ag;

    move-result-object v13

    invoke-virtual {v10, v13}, Lcom/jiliguala/niuwa/common/widget/d;->b(Landroid/support/v4/app/ag;)V

    goto/16 :goto_0

    .line 345
    :cond_8
    invoke-virtual {v10, v5}, Lcom/jiliguala/niuwa/common/widget/d;->setArguments(Landroid/os/Bundle;)V

    goto :goto_1

    .line 202
    :sswitch_data_0
    .sparse-switch
        0x7f09000f -> :sswitch_2
        0x7f090014 -> :sswitch_5
        0x7f090125 -> :sswitch_4
        0x7f090142 -> :sswitch_a
        0x7f090191 -> :sswitch_8
        0x7f0901fe -> :sswitch_1
        0x7f090356 -> :sswitch_7
        0x7f090445 -> :sswitch_3
        0x7f0904f0 -> :sswitch_6
        0x7f090593 -> :sswitch_0
        0x7f0905c3 -> :sswitch_9
    .end sparse-switch
.end method
