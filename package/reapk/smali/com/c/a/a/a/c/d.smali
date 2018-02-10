.class public abstract Lcom/c/a/a/a/c/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 17
    .local p0, "this":Lcom/c/a/a/a/c/d;, "Lcom/c/a/a/a/c/d<TT;>;"
    .local p1, "t":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/c/a/a/a/c/d;->a:Z

    .line 19
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/a/c/d;->c:Ljava/lang/String;

    .line 20
    iput-object p1, p0, Lcom/c/a/a/a/c/d;->b:Ljava/lang/Object;

    .line 21
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;)V
    .locals 1
    .param p1, "isHeader"    # Z
    .param p2, "header"    # Ljava/lang/String;

    .prologue
    .line 11
    .local p0, "this":Lcom/c/a/a/a/c/d;, "Lcom/c/a/a/a/c/d<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-boolean p1, p0, Lcom/c/a/a/a/c/d;->a:Z

    .line 13
    iput-object p2, p0, Lcom/c/a/a/a/c/d;->c:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/c/a/a/a/c/d;->b:Ljava/lang/Object;

    .line 15
    return-void
.end method
