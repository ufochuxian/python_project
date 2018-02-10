.class final Lcom/jakewharton/rxbinding/a/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/c/o;
.implements Lrx/c/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jakewharton/rxbinding/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lrx/c/o",
        "<TT;>;",
        "Lrx/c/p",
        "<",
        "Ljava/lang/Object;",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 14
    .local p0, "this":Lcom/jakewharton/rxbinding/a/a$a;, "Lcom/jakewharton/rxbinding/a/a$a<TT;>;"
    .local p1, "value":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/jakewharton/rxbinding/a/a$a;->a:Ljava/lang/Object;

    .line 16
    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 23
    .local p0, "this":Lcom/jakewharton/rxbinding/a/a$a;, "Lcom/jakewharton/rxbinding/a/a$a<TT;>;"
    iget-object v0, p0, Lcom/jakewharton/rxbinding/a/a$a;->a:Ljava/lang/Object;

    return-object v0
.end method

.method public call(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 19
    .local p0, "this":Lcom/jakewharton/rxbinding/a/a$a;, "Lcom/jakewharton/rxbinding/a/a$a<TT;>;"
    iget-object v0, p0, Lcom/jakewharton/rxbinding/a/a$a;->a:Ljava/lang/Object;

    return-object v0
.end method
