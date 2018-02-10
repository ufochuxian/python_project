.class public abstract Lcom/nineoldandroids/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/nineoldandroids/a/a$a;
    }
.end annotation


# instance fields
.field a:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/a/a$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nineoldandroids/a/a;->a:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    .prologue
    .line 45
    return-void
.end method

.method public abstract a(J)V
.end method

.method public abstract a(Landroid/view/animation/Interpolator;)V
.end method

.method public a(Lcom/nineoldandroids/a/a$a;)V
    .locals 1
    .param p1, "listener"    # Lcom/nineoldandroids/a/a$a;

    .prologue
    .line 126
    iget-object v0, p0, Lcom/nineoldandroids/a/a;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nineoldandroids/a/a;->a:Ljava/util/ArrayList;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/nineoldandroids/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public a(Ljava/lang/Object;)V
    .locals 0
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 220
    return-void
.end method

.method public abstract b(J)Lcom/nineoldandroids/a/a;
.end method

.method public b()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public b(Lcom/nineoldandroids/a/a$a;)V
    .locals 1
    .param p1, "listener"    # Lcom/nineoldandroids/a/a$a;

    .prologue
    .line 139
    iget-object v0, p0, Lcom/nineoldandroids/a/a;->a:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 146
    :cond_0
    :goto_0
    return-void

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/nineoldandroids/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 143
    iget-object v0, p0, Lcom/nineoldandroids/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nineoldandroids/a/a;->a:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public c()V
    .locals 0

    .prologue
    .line 63
    return-void
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 27
    invoke-virtual {p0}, Lcom/nineoldandroids/a/a;->j()Lcom/nineoldandroids/a/a;

    move-result-object v0

    return-object v0
.end method

.method public abstract d()J
.end method

.method public abstract e()J
.end method

.method public abstract f()Z
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p0}, Lcom/nineoldandroids/a/a;->f()Z

    move-result v0

    return v0
.end method

.method public h()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/a/a$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lcom/nineoldandroids/a/a;->a:Ljava/util/ArrayList;

    return-object v0
.end method

.method public i()V
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lcom/nineoldandroids/a/a;->a:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Lcom/nineoldandroids/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 165
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/nineoldandroids/a/a;->a:Ljava/util/ArrayList;

    .line 167
    :cond_0
    return-void
.end method

.method public j()Lcom/nineoldandroids/a/a;
    .locals 7

    .prologue
    .line 172
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/a;

    .line 173
    .local v0, "anim":Lcom/nineoldandroids/a/a;
    iget-object v5, p0, Lcom/nineoldandroids/a/a;->a:Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    .line 174
    iget-object v4, p0, Lcom/nineoldandroids/a/a;->a:Ljava/util/ArrayList;

    .line 175
    .local v4, "oldListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v0, Lcom/nineoldandroids/a/a;->a:Ljava/util/ArrayList;

    .line 176
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 177
    .local v3, "numListeners":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 178
    iget-object v5, v0, Lcom/nineoldandroids/a/a;->a:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 182
    .end local v0    # "anim":Lcom/nineoldandroids/a/a;
    .end local v2    # "i":I
    .end local v3    # "numListeners":I
    .end local v4    # "oldListeners":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/nineoldandroids/a/a$a;>;"
    :catch_0
    move-exception v1

    .line 183
    .local v1, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v5, Ljava/lang/AssertionError;

    invoke-direct {v5}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 181
    .end local v1    # "e":Ljava/lang/CloneNotSupportedException;
    .restart local v0    # "anim":Lcom/nineoldandroids/a/a;
    :cond_0
    return-object v0
.end method

.method public k()V
    .locals 0

    .prologue
    .line 197
    return-void
.end method

.method public l()V
    .locals 0

    .prologue
    .line 209
    return-void
.end method
