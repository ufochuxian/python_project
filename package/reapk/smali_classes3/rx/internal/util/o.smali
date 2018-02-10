.class public final Lrx/internal/util/o;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/o$c;,
        Lrx/internal/util/o$a;,
        Lrx/internal/util/o$b;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static a()Lrx/c/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    sget-object v0, Lrx/internal/util/o$b;->INSTANCE:Lrx/internal/util/o$b;

    return-object v0
.end method

.method public static b()Lrx/c/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/c/p",
            "<-TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    sget-object v0, Lrx/internal/util/o$a;->INSTANCE:Lrx/internal/util/o$a;

    return-object v0
.end method

.method public static c()Lrx/c/p;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/c/p",
            "<TT;TT;>;"
        }
    .end annotation

    .prologue
    .line 55
    sget-object v0, Lrx/internal/util/o$c;->INSTANCE:Lrx/internal/util/o$c;

    return-object v0
.end method
