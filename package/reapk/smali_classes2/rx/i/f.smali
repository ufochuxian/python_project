.class public final Lrx/i/f;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/i/f$b;,
        Lrx/i/f$a;
    }
.end annotation


# static fields
.field private static final a:Lrx/i/f$b;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    new-instance v0, Lrx/i/f$b;

    invoke-direct {v0}, Lrx/i/f$b;-><init>()V

    sput-object v0, Lrx/i/f;->a:Lrx/i/f$b;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No instances!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static varargs a([Lrx/m;)Lrx/i/b;
    .locals 1
    .param p0, "subscriptions"    # [Lrx/m;

    .prologue
    .line 120
    new-instance v0, Lrx/i/b;

    invoke-direct {v0, p0}, Lrx/i/b;-><init>([Lrx/m;)V

    return-object v0
.end method

.method public static a()Lrx/m;
    .locals 1

    .prologue
    .line 51
    invoke-static {}, Lrx/i/a;->a()Lrx/i/a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/concurrent/Future;)Lrx/m;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future",
            "<*>;)",
            "Lrx/m;"
        }
    .end annotation

    .prologue
    .line 89
    .local p0, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<*>;"
    new-instance v0, Lrx/i/f$a;

    invoke-direct {v0, p0}, Lrx/i/f$a;-><init>(Ljava/util/concurrent/Future;)V

    return-object v0
.end method

.method public static a(Lrx/c/b;)Lrx/m;
    .locals 1
    .param p0, "unsubscribe"    # Lrx/c/b;

    .prologue
    .line 78
    invoke-static {p0}, Lrx/i/a;->a(Lrx/c/b;)Lrx/i/a;

    move-result-object v0

    return-object v0
.end method

.method public static b()Lrx/m;
    .locals 1

    .prologue
    .line 67
    sget-object v0, Lrx/i/f;->a:Lrx/i/f$b;

    return-object v0
.end method
