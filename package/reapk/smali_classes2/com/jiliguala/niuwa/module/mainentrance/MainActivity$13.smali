.class Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->showFragmentMessageDot(Z)V
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
    .line 542
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$300(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$a;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 547
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity$13;->a:Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;

    invoke-static {v0}, Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;->access$500(Lcom/jiliguala/niuwa/module/mainentrance/MainActivity;)V

    .line 548
    return-void
.end method
