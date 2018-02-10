.class public Lcom/jiliguala/niuwa/common/util/xutils/task/e;
.super Lcom/jiliguala/niuwa/common/util/xutils/task/d;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/jiliguala/niuwa/common/util/xutils/task/d",
        "<",
        "Ljava/lang/Runnable;",
        ">;",
        "Ljava/lang/Runnable;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "priority"    # Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;
    .param p2, "obj"    # Ljava/lang/Runnable;

    .prologue
    .line 11
    invoke-direct {p0, p1, p2}, Lcom/jiliguala/niuwa/common/util/xutils/task/d;-><init>(Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;Ljava/lang/Object;)V

    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 16
    iget-object v0, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/e;->b:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 17
    return-void
.end method
