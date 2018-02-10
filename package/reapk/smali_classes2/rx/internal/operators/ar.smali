.class public final Lrx/internal/operators/ar;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/b$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/ar$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/b$a;"
    }
.end annotation


# static fields
.field public static volatile c:Z


# instance fields
.field final a:Lrx/b$a;

.field final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lrx/b$a;)V
    .locals 1
    .param p1, "source"    # Lrx/b$a;

    .prologue
    .line 40
    .local p0, "this":Lrx/internal/operators/ar;, "Lrx/internal/operators/ar<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lrx/internal/operators/ar;->a:Lrx/b$a;

    .line 42
    invoke-static {}, Lrx/internal/operators/aq;->a()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lrx/internal/operators/ar;->b:Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public a(Lrx/d;)V
    .locals 3
    .param p1, "t"    # Lrx/d;

    .prologue
    .line 47
    .local p0, "this":Lrx/internal/operators/ar;, "Lrx/internal/operators/ar<TT;>;"
    iget-object v0, p0, Lrx/internal/operators/ar;->a:Lrx/b$a;

    new-instance v1, Lrx/internal/operators/ar$a;

    iget-object v2, p0, Lrx/internal/operators/ar;->b:Ljava/lang/String;

    invoke-direct {v1, p1, v2}, Lrx/internal/operators/ar$a;-><init>(Lrx/d;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lrx/b$a;->call(Ljava/lang/Object;)V

    .line 48
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 28
    .local p0, "this":Lrx/internal/operators/ar;, "Lrx/internal/operators/ar<TT;>;"
    check-cast p1, Lrx/d;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lrx/internal/operators/ar;->a(Lrx/d;)V

    return-void
.end method
