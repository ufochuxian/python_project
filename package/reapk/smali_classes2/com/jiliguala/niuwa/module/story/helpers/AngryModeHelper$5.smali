.class Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/common/util/h$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->showEnvSwitchDlg()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    .prologue
    .line 490
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$5;->b:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    iput p2, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$5;->a:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .prologue
    .line 493
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$5;->b:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->access$202(Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;Z)Z

    .line 494
    const/4 v0, 0x0

    .line 495
    .local v0, "mode":I
    iget v1, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$5;->a:I

    packed-switch v1, :pswitch_data_0

    .line 503
    :goto_0
    const-string v1, "D_M"

    invoke-static {v1, v0}, Lcom/jiliguala/niuwa/common/util/t;->b(Ljava/lang/String;I)V

    .line 504
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/login/a;->m()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 505
    invoke-static {}, Lcom/jiliguala/niuwa/logic/login/a;->a()Lcom/jiliguala/niuwa/logic/login/a;

    move-result-object v1

    invoke-static {}, Lcom/jiliguala/niuwa/c;->a()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/logic/login/a;->a(Landroid/content/Context;)V

    .line 508
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$5;->b:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->access$300(Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;)V

    .line 509
    return-void

    .line 497
    :pswitch_0
    const/4 v0, 0x1

    .line 498
    goto :goto_0

    .line 500
    :pswitch_1
    const/4 v0, 0x0

    goto :goto_0

    .line 495
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public b()V
    .locals 2

    .prologue
    .line 514
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper$5;->b:Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;->access$202(Lcom/jiliguala/niuwa/module/story/helpers/AngryModeHelper;Z)Z

    .line 515
    return-void
.end method
