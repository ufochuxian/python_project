.class Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->checkNetwork(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 462
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$12;->b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$12;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 465
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    .line 480
    :cond_0
    :goto_0
    return-void

    .line 467
    :sswitch_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/jiliguala/niuwa/MyApplication;->ApkResNoneWifiDownloadEnable:Z

    .line 468
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$12;->b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$000(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;

    move-result-object v0

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$12;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/jiliguala/niuwa/module/mainentrance/presenter/MainPresenter;->doAppUpGrade(Ljava/lang/String;)V

    .line 469
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$12;->b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$12;->b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$12;->b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 474
    :sswitch_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/jiliguala/niuwa/MyApplication;->ApkResNoneWifiDownloadEnable:Z

    .line 475
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$12;->b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$12;->b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 476
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$12;->b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$400(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/common/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/a;->dismissAllowingStateLoss()V

    goto :goto_0

    .line 465
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f0900fa -> :sswitch_1
        0x7f090156 -> :sswitch_0
    .end sparse-switch
.end method
