.class public final Lrx/internal/operators/ch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/ch$b;,
        Lrx/internal/operators/ch$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<",
        "Lrx/Notification",
        "<TT;>;TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 50
    .local p0, "this":Lrx/internal/operators/ch;, "Lrx/internal/operators/ch<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public static a()Lrx/internal/operators/ch;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lrx/internal/operators/ch",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 47
    sget-object v0, Lrx/internal/operators/ch$a;->a:Lrx/internal/operators/ch;

    return-object v0
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-",
            "Lrx/Notification",
            "<TT;>;>;)",
            "Lrx/l",
            "<-TT;>;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lrx/internal/operators/ch;, "Lrx/internal/operators/ch<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-Lrx/Notification<TT;>;>;"
    new-instance v0, Lrx/internal/operators/ch$b;

    invoke-direct {v0, p1}, Lrx/internal/operators/ch$b;-><init>(Lrx/l;)V

    .line 57
    .local v0, "parent":Lrx/internal/operators/ch$b;, "Lrx/internal/operators/ch$b<TT;>;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 58
    new-instance v1, Lrx/internal/operators/ch$1;

    invoke-direct {v1, p0, v0}, Lrx/internal/operators/ch$1;-><init>(Lrx/internal/operators/ch;Lrx/internal/operators/ch$b;)V

    invoke-virtual {p1, v1}, Lrx/l;->setProducer(Lrx/g;)V

    .line 66
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 33
    .local p0, "this":Lrx/internal/operators/ch;, "Lrx/internal/operators/ch<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ch;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
