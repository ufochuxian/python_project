.class Lcom/jiliguala/niuwa/a/b/c$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/jiliguala/niuwa/a/b/c;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/jiliguala/niuwa/a/b/c;


# direct methods
.method constructor <init>(Lcom/jiliguala/niuwa/a/b/c;)V
    .locals 0
    .param p1, "this$0"    # Lcom/jiliguala/niuwa/a/b/c;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/jiliguala/niuwa/a/b/c$2;->a:Lcom/jiliguala/niuwa/a/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 291
    iget-object v0, p0, Lcom/jiliguala/niuwa/a/b/c$2;->a:Lcom/jiliguala/niuwa/a/b/c;

    invoke-virtual {v0}, Lcom/jiliguala/niuwa/a/b/c;->b()V

    .line 292
    return-void
.end method
