.class public abstract Lcom/nineoldandroids/util/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<TV;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 35
    .local p0, "this":Lcom/nineoldandroids/util/c;, "Lcom/nineoldandroids/util/c<TT;TV;>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lcom/nineoldandroids/util/c;->a:Ljava/lang/String;

    .line 37
    iput-object p1, p0, Lcom/nineoldandroids/util/c;->b:Ljava/lang/Class;

    .line 38
    return-void
.end method

.method public static a(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Lcom/nineoldandroids/util/c;
    .locals 1
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/Class",
            "<TV;>;",
            "Ljava/lang/String;",
            ")",
            "Lcom/nineoldandroids/util/c",
            "<TT;TV;>;"
        }
    .end annotation

    .prologue
    .line 58
    .local p0, "hostType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "valueType":Ljava/lang/Class;, "Ljava/lang/Class<TV;>;"
    new-instance v0, Lcom/nineoldandroids/util/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/nineoldandroids/util/d;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TV;"
        }
    .end annotation
.end method

.method public a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TV;)V"
        }
    .end annotation

    .prologue
    .line 77
    .local p0, "this":Lcom/nineoldandroids/util/c;, "Lcom/nineoldandroids/util/c<TT;TV;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/nineoldandroids/util/c;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is read-only"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 69
    .local p0, "this":Lcom/nineoldandroids/util/c;, "Lcom/nineoldandroids/util/c<TT;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    .local p0, "this":Lcom/nineoldandroids/util/c;, "Lcom/nineoldandroids/util/c<TT;TV;>;"
    iget-object v0, p0, Lcom/nineoldandroids/util/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<TV;>;"
        }
    .end annotation

    .prologue
    .line 96
    .local p0, "this":Lcom/nineoldandroids/util/c;, "Lcom/nineoldandroids/util/c<TT;TV;>;"
    iget-object v0, p0, Lcom/nineoldandroids/util/c;->b:Ljava/lang/Class;

    return-object v0
.end method
