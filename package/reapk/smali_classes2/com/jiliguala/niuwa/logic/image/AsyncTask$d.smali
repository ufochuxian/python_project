.class abstract Lcom/jiliguala/niuwa/logic/image/AsyncTask$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/image/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "d"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Params:",
        "Ljava/lang/Object;",
        "Result:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<TResult;>;"
    }
.end annotation


# instance fields
.field b:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TParams;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 609
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask$d;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask$d<TParams;TResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/jiliguala/niuwa/logic/image/AsyncTask$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/jiliguala/niuwa/logic/image/AsyncTask$1;

    .prologue
    .line 609
    .local p0, "this":Lcom/jiliguala/niuwa/logic/image/AsyncTask$d;, "Lcom/jiliguala/niuwa/logic/image/AsyncTask$d<TParams;TResult;>;"
    invoke-direct {p0}, Lcom/jiliguala/niuwa/logic/image/AsyncTask$d;-><init>()V

    return-void
.end method
