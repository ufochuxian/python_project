.class Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->apkDownloadComplete(Ljava/lang/String;)V
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
    .line 1192
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$4;->b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iput-object p2, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$4;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1195
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$4;->b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$1100(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1196
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$4;->b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$1100(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/common/a/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/common/a/d;->dismissAllowingStateLoss()V

    .line 1198
    :cond_0
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$4;->b:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$4;->a:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/jiliguala/niuwa/common/util/d;->a(Landroid/content/Context;Ljava/lang/String;)V

    .line 1199
    return-void
.end method
