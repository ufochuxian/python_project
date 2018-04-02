.class Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$11;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/jiliguala/niuwa/logic/l/b$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->registerScreenShot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    .prologue
    .line 439
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$11;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 3
    .param p1, "imgPath"    # Ljava/lang/String;

    .prologue
    .line 442
    invoke-static {}, Lcom/jiliguala/niuwa/logic/l/d;->a()Lcom/jiliguala/niuwa/logic/l/d;

    move-result-object v1

    invoke-virtual {v1}, Lcom/jiliguala/niuwa/logic/l/d;->b()Landroid/app/Activity;

    move-result-object v0

    .line 443
    .local v0, "topActivity":Landroid/app/Activity;
    instance-of v1, v0, Lcom/jiliguala/niuwa/logic/l/a;

    if-eqz v1, :cond_0

    .line 444
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$11;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v1

    new-instance v2, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$11$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$11$1;-><init>(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$11;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->post(Ljava/lang/Runnable;)Z

    .line 451
    :cond_0
    return-void
.end method
