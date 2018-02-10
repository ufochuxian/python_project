.class public Lcom/jiliguala/niuwa/common/util/xutils/task/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;

.field public final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TE;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;Ljava/lang/Object;)V
    .locals 0
    .param p1, "priority"    # Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;",
            "TE;)V"
        }
    .end annotation

    .prologue
    .line 13
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/d;, "Lcom/jiliguala/niuwa/common/util/xutils/task/d<TE;>;"
    .local p2, "obj":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    if-nez p1, :cond_0

    sget-object p1, Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;->DEFAULT:Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;

    .end local p1    # "priority":Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;
    :cond_0
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/d;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/Priority;

    .line 15
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/d;->b:Ljava/lang/Object;

    .line 16
    return-void
.end method
