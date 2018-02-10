.class public final Lrx/internal/operators/de;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/e$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/de$c;,
        Lrx/internal/operators/de$d;,
        Lrx/internal/operators/de$b;,
        Lrx/internal/operators/de$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/e$b",
        "<TT;",
        "Lrx/e",
        "<+TT;>;>;"
    }
.end annotation


# instance fields
.field final a:Z


# direct methods
.method constructor <init>(Z)V
    .locals 0
    .param p1, "delayError"    # Z

    .prologue
    .line 65
    .local p0, "this":Lrx/internal/operators/de;, "Lrx/internal/operators/de<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    iput-boolean p1, p0, Lrx/internal/operators/de;->a:Z

    .line 67
    return-void
.end method

.method public static a(Z)Lrx/internal/operators/de;
    .locals 1
    .param p0, "delayError"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(Z)",
            "Lrx/internal/operators/de",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 59
    if-eqz p0, :cond_0

    .line 60
    sget-object v0, Lrx/internal/operators/de$b;->a:Lrx/internal/operators/de;

    .line 62
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lrx/internal/operators/de$a;->a:Lrx/internal/operators/de;

    goto :goto_0
.end method


# virtual methods
.method public a(Lrx/l;)Lrx/l;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/l",
            "<-TT;>;)",
            "Lrx/l",
            "<-",
            "Lrx/e",
            "<+TT;>;>;"
        }
    .end annotation

    .prologue
    .line 71
    .local p0, "this":Lrx/internal/operators/de;, "Lrx/internal/operators/de<TT;>;"
    .local p1, "child":Lrx/l;, "Lrx/l<-TT;>;"
    new-instance v0, Lrx/internal/operators/de$d;

    iget-boolean v1, p0, Lrx/internal/operators/de;->a:Z

    invoke-direct {v0, p1, v1}, Lrx/internal/operators/de$d;-><init>(Lrx/l;Z)V

    .line 72
    .local v0, "sws":Lrx/internal/operators/de$d;, "Lrx/internal/operators/de$d<TT;>;"
    invoke-virtual {p1, v0}, Lrx/l;->add(Lrx/m;)V

    .line 73
    invoke-virtual {v0}, Lrx/internal/operators/de$d;->a()V

    .line 74
    return-object v0
.end method

.method public synthetic call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 39
    .local p0, "this":Lrx/internal/operators/de;, "Lrx/internal/operators/de<TT;>;"
    check-cast p1, Lrx/l;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/de;->a(Lrx/l;)Lrx/l;

    move-result-object v0

    return-object v0
.end method
