.class Lcom/nineoldandroids/a/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Cloneable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/a/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "e"
.end annotation


# instance fields
.field public a:Lcom/nineoldandroids/a/a;

.field public b:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/a/d$c;",
            ">;"
        }
    .end annotation
.end field

.field public c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/a/d$c;",
            ">;"
        }
    .end annotation
.end field

.field public d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/a/d$e;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nineoldandroids/a/d$e;",
            ">;"
        }
    .end annotation
.end field

.field public f:Z


# direct methods
.method public constructor <init>(Lcom/nineoldandroids/a/a;)V
    .locals 1
    .param p1, "animation"    # Lcom/nineoldandroids/a/a;

    .prologue
    const/4 v0, 0x0

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 781
    iput-object v0, p0, Lcom/nineoldandroids/a/d$e;->b:Ljava/util/ArrayList;

    .line 792
    iput-object v0, p0, Lcom/nineoldandroids/a/d$e;->c:Ljava/util/ArrayList;

    .line 798
    iput-object v0, p0, Lcom/nineoldandroids/a/d$e;->d:Ljava/util/ArrayList;

    .line 805
    iput-object v0, p0, Lcom/nineoldandroids/a/d$e;->e:Ljava/util/ArrayList;

    .line 812
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/nineoldandroids/a/d$e;->f:Z

    .line 822
    iput-object p1, p0, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    .line 823
    return-void
.end method


# virtual methods
.method public a()Lcom/nineoldandroids/a/d$e;
    .locals 3

    .prologue
    .line 849
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/nineoldandroids/a/d$e;

    .line 850
    .local v1, "node":Lcom/nineoldandroids/a/d$e;
    iget-object v2, p0, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;

    invoke-virtual {v2}, Lcom/nineoldandroids/a/a;->j()Lcom/nineoldandroids/a/a;

    move-result-object v2

    iput-object v2, v1, Lcom/nineoldandroids/a/d$e;->a:Lcom/nineoldandroids/a/a;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 851
    return-object v1

    .line 852
    .end local v1    # "node":Lcom/nineoldandroids/a/d$e;
    :catch_0
    move-exception v0

    .line 853
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method public a(Lcom/nineoldandroids/a/d$c;)V
    .locals 3
    .param p1, "dependency"    # Lcom/nineoldandroids/a/d$c;

    .prologue
    .line 831
    iget-object v1, p0, Lcom/nineoldandroids/a/d$e;->b:Ljava/util/ArrayList;

    if-nez v1, :cond_0

    .line 832
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nineoldandroids/a/d$e;->b:Ljava/util/ArrayList;

    .line 833
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/nineoldandroids/a/d$e;->d:Ljava/util/ArrayList;

    .line 835
    :cond_0
    iget-object v1, p0, Lcom/nineoldandroids/a/d$e;->b:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    iget-object v1, p0, Lcom/nineoldandroids/a/d$e;->d:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/nineoldandroids/a/d$c;->c:Lcom/nineoldandroids/a/d$e;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 837
    iget-object v1, p0, Lcom/nineoldandroids/a/d$e;->d:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/nineoldandroids/a/d$c;->c:Lcom/nineoldandroids/a/d$e;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 839
    :cond_1
    iget-object v0, p1, Lcom/nineoldandroids/a/d$c;->c:Lcom/nineoldandroids/a/d$e;

    .line 840
    .local v0, "dependencyNode":Lcom/nineoldandroids/a/d$e;
    iget-object v1, v0, Lcom/nineoldandroids/a/d$e;->e:Ljava/util/ArrayList;

    if-nez v1, :cond_2

    .line 841
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/nineoldandroids/a/d$e;->e:Ljava/util/ArrayList;

    .line 843
    :cond_2
    iget-object v1, v0, Lcom/nineoldandroids/a/d$e;->e:Ljava/util/ArrayList;

    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 844
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
    .line 772
    invoke-virtual {p0}, Lcom/nineoldandroids/a/d$e;->a()Lcom/nineoldandroids/a/d$e;

    move-result-object v0

    return-object v0
.end method
