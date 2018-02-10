.class Lcom/jiliguala/niuwa/logic/image/AsyncTask$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/image/AsyncTask;
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
.field final a:Lcom/jiliguala/niuwa/logic/image/AsyncTask;

.field final b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TData;"
        }
    .end annotation
.end field


# direct methods
.method varargs constructor <init>(Lcom/jiliguala/niuwa/logic/image/AsyncTask;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "task"    # Lcom/jiliguala/niuwa/logic/image/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/jiliguala/niuwa/logic/image/AsyncTask;",
            "[TData;)V"
        }
    .end annotation

    .prologue
    .line 618
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask$a;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask$a<TData;>;"
    .local p2, "data":[Ljava/lang/Object;, "[TData;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 619
    iput-object p1, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$a;->a:Lcom/jiliguala/niuwa/logic/image/AsyncTask;

    .line 620
    iput-object p2, p0, Lcom/jiliguala/niuwa/logic/image/AsyncTask$a;->b:[Ljava/lang/Object;

    .line 621
    return-void
.end method
