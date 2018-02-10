.class public abstract Lcom/nineoldandroids/util/b;
.super Lcom/nineoldandroids/util/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/nineoldandroids/util/c",
        "<TT;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    .local p0, "this":Lcom/nineoldandroids/util/b;, "Lcom/nineoldandroids/util/b<TT;>;"
    const-class v0, Ljava/lang/Integer;

    invoke-direct {p0, v0, p1}, Lcom/nineoldandroids/util/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    .line 32
    return-void
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public final a(Ljava/lang/Object;Ljava/lang/Integer;)V
    .locals 1
    .param p2, "value"    # Ljava/lang/Integer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava/lang/Integer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p0, "this":Lcom/nineoldandroids/util/b;, "Lcom/nineoldandroids/util/b<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/nineoldandroids/util/b;->a(Ljava/lang/Object;Ljava/lang/Integer;)V

    .line 43
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    .local p0, "this":Lcom/nineoldandroids/util/b;, "Lcom/nineoldandroids/util/b<TT;>;"
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/nineoldandroids/util/b;->a(Ljava/lang/Object;Ljava/lang/Integer;)V

    return-void
.end method
