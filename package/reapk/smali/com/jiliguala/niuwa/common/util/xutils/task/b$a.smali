.class Lcom/jiliguala/niuwa/common/util/xutils/task/b$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/common/util/xutils/task/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field final a:Lcom/jiliguala/niuwa/common/util/xutils/task/b;

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lcom/jiliguala/niuwa/common/util/xutils/task/b;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcom/jiliguala/niuwa/common/util/xutils/task/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/common/util/xutils/task/b;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 402
    .local p0, "this":Lcom/jiliguala/niuwa/common/util/xutils/task/b$a;, "Lcom/jiliguala/niuwa/common/util/xutils/task/b$a<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 403
    iput-object p1, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b$a;->a:Lcom/jiliguala/niuwa/common/util/xutils/task/b;

    .line 404
    iput-object p2, p0, Lcom/jiliguala/niuwa/common/util/xutils/task/b$a;->b:[Ljava/lang/Object;

    .line 405
    return-void
.end method
