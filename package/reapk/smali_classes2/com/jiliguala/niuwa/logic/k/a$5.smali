.class Lcom/jiliguala/niuwa/logic/k/a$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/logic/k/a;->g()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/logic/k/a;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/logic/k/a;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/logic/k/a;

    .prologue
    .line 237
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/k/a$5;->a:Lcom/jiliguala/niuwa/logic/k/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 240
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a$5;->a:Lcom/jiliguala/niuwa/logic/k/a;

    iget-object v0, v0, Lcom/jiliguala/niuwa/logic/k/a;->d:Landroid/os/Handler;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 241
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/k/a$5;->a:Lcom/jiliguala/niuwa/logic/k/a;

    invoke-static {v0}, Lcom/jiliguala/niuwa/logic/k/a;->b(Lcom/jiliguala/niuwa/logic/k/a;)V

    .line 242
    return-void
.end method
