.class Lcom/jiliguala/niuwa/module/speak/SpeakActivity$9;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->initNetworkChangeFragment()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    .prologue
    .line 292
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$9;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 296
    :try_start_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_0

    .line 319
    :goto_0
    return-void

    .line 298
    :sswitch_0
    const/4 v1, 0x0

    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->VideoPlayNoneWifiEnable:Z

    .line 299
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$9;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$000(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/common/a/f;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$9;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$000(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/common/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/f;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$9;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$000(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/common/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/f;->dismissAllowingStateLoss()V

    .line 302
    :cond_0
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$9;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$100(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 305
    .end local v0    # "e":Ljava/lang/Exception;
    :sswitch_1
    const/4 v1, 0x1

    :try_start_1
    sput-boolean v1, Lcom/jiliguala/niuwa/MyApplication;->VideoPlayNoneWifiEnable:Z

    .line 306
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$9;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$000(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/common/a/f;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$9;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$000(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/common/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/f;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$9;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$000(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)Lcom/jiliguala/niuwa/common/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/common/a/f;->dismissAllowingStateLoss()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 310
    :cond_1
    :try_start_2
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/speak/SpeakActivity$9;->a:Lcom/jiliguala/niuwa/module/speak/SpeakActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/speak/SpeakActivity;->access$200(Lcom/jiliguala/niuwa/module/speak/SpeakActivity;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 311
    :catch_1
    move-exception v0

    .line 312
    .restart local v0    # "e":Ljava/lang/Exception;
    :try_start_3
    invoke-static {v0}, Lcom/jiliguala/niuwa/common/util/e;->a(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 296
    :sswitch_data_0
    .sparse-switch
        0x7f0900fa -> :sswitch_0
        0x7f090156 -> :sswitch_1
    .end sparse-switch
.end method
