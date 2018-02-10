.class public Lrx/d/d;
.super Lrx/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/e",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/Object;Lrx/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Lrx/e$a",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lrx/d/d;, "Lrx/d/d<TK;TT;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "onSubscribe":Lrx/e$a;, "Lrx/e$a<TT;>;"
    invoke-direct {p0, p2}, Lrx/e;-><init>(Lrx/e$a;)V

    .line 97
    iput-object p1, p0, Lrx/d/d;->b:Ljava/lang/Object;

    .line 98
    return-void
.end method

.method public static a(Ljava/lang/Object;Lrx/e$a;)Lrx/d/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lrx/e$a",
            "<TT;>;)",
            "Lrx/d/d",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .line 92
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "f":Lrx/e$a;, "Lrx/e$a<TT;>;"
    new-instance v0, Lrx/d/d;

    invoke-direct {v0, p0, p1}, Lrx/d/d;-><init>(Ljava/lang/Object;Lrx/e$a;)V

    return-object v0
.end method

.method public static a(Ljava/lang/Object;Lrx/e;)Lrx/d/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">(TK;",
            "Lrx/e",
            "<TT;>;)",
            "Lrx/d/d",
            "<TK;TT;>;"
        }
    .end annotation

    .prologue
    .line 53
    .local p0, "key":Ljava/lang/Object;, "TK;"
    .local p1, "o":Lrx/e;, "Lrx/e<TT;>;"
    new-instance v0, Lrx/d/d;

    new-instance v1, Lrx/d/d$1;

    invoke-direct {v1, p1}, Lrx/d/d$1;-><init>(Lrx/e;)V

    invoke-direct {v0, p0, v1}, Lrx/d/d;-><init>(Ljava/lang/Object;Lrx/e$a;)V

    return-object v0
.end method


# virtual methods
.method public L()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 106
    .local p0, "this":Lrx/d/d;, "Lrx/d/d<TK;TT;>;"
    iget-object v0, p0, Lrx/d/d;->b:Ljava/lang/Object;

    return-object v0
.end method
