.class public abstract Lrx/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Lrx/b/b;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .param p1, "e"    # Ljava/lang/Throwable;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    return-object p1
.end method

.method public a(Lrx/b$a;)Lrx/b$a;
    .locals 0
    .param p1, "f"    # Lrx/b$a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 55
    return-object p1
.end method

.method public a(Lrx/b;Lrx/b$a;)Lrx/b$a;
    .locals 0
    .param p1, "completableInstance"    # Lrx/b;
    .param p2, "onSubscribe"    # Lrx/b$a;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 73
    return-object p2
.end method

.method public a(Lrx/b$b;)Lrx/b$b;
    .locals 0
    .param p1, "lift"    # Lrx/b$b;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 106
    return-object p1
.end method
