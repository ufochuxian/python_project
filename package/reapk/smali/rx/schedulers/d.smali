.class public final Lrx/schedulers/d;
.super Lrx/h;
.source "SourceFile"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 26
    invoke-direct {p0}, Lrx/h;-><init>()V

    .line 27
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public createWorker()Lrx/h$a;
    .locals 1

    .prologue
    .line 32
    const/4 v0, 0x0

    return-object v0
.end method
