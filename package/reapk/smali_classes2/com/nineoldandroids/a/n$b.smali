.class Lcom/nineoldandroids/a/n$b;
.super Lcom/nineoldandroids/a/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# instance fields
.field h:Lcom/nineoldandroids/a/i;

.field i:I

.field private j:Lcom/nineoldandroids/util/b;


# direct methods
.method public constructor <init>(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/a/i;)V
    .locals 1
    .param p1, "property"    # Lcom/nineoldandroids/util/c;
    .param p2, "keyframeSet"    # Lcom/nineoldandroids/a/i;

    .prologue
    .line 765
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/a/n;-><init>(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/a/n$1;)V

    .line 766
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/a/n$b;->f:Ljava/lang/Class;

    .line 767
    iput-object p2, p0, Lcom/nineoldandroids/a/n$b;->g:Lcom/nineoldandroids/a/k;

    .line 768
    iget-object v0, p0, Lcom/nineoldandroids/a/n$b;->g:Lcom/nineoldandroids/a/k;

    check-cast v0, Lcom/nineoldandroids/a/i;

    iput-object v0, p0, Lcom/nineoldandroids/a/n$b;->h:Lcom/nineoldandroids/a/i;

    .line 769
    instance-of v0, p1, Lcom/nineoldandroids/util/b;

    if-eqz v0, :cond_0

    .line 770
    iget-object v0, p0, Lcom/nineoldandroids/a/n$b;->c:Lcom/nineoldandroids/util/c;

    check-cast v0, Lcom/nineoldandroids/util/b;

    iput-object v0, p0, Lcom/nineoldandroids/a/n$b;->j:Lcom/nineoldandroids/util/b;

    .line 772
    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Lcom/nineoldandroids/util/c;[I)V
    .locals 1
    .param p1, "property"    # Lcom/nineoldandroids/util/c;
    .param p2, "values"    # [I

    .prologue
    .line 780
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/a/n;-><init>(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/a/n$1;)V

    .line 781
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/a/n$b;->a([I)V

    .line 782
    instance-of v0, p1, Lcom/nineoldandroids/util/b;

    if-eqz v0, :cond_0

    .line 783
    iget-object v0, p0, Lcom/nineoldandroids/a/n$b;->c:Lcom/nineoldandroids/util/c;

    check-cast v0, Lcom/nineoldandroids/util/b;

    iput-object v0, p0, Lcom/nineoldandroids/a/n$b;->j:Lcom/nineoldandroids/util/b;

    .line 785
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nineoldandroids/a/i;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "keyframeSet"    # Lcom/nineoldandroids/a/i;

    .prologue
    .line 758
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/a/n;-><init>(Ljava/lang/String;Lcom/nineoldandroids/a/n$1;)V

    .line 759
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/a/n$b;->f:Ljava/lang/Class;

    .line 760
    iput-object p2, p0, Lcom/nineoldandroids/a/n$b;->g:Lcom/nineoldandroids/a/k;

    .line 761
    iget-object v0, p0, Lcom/nineoldandroids/a/n$b;->g:Lcom/nineoldandroids/a/k;

    check-cast v0, Lcom/nineoldandroids/a/i;

    iput-object v0, p0, Lcom/nineoldandroids/a/n$b;->h:Lcom/nineoldandroids/a/i;

    .line 762
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[I)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [I

    .prologue
    .line 775
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/a/n;-><init>(Ljava/lang/String;Lcom/nineoldandroids/a/n$1;)V

    .line 776
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/a/n$b;->a([I)V

    .line 777
    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/nineoldandroids/a/n;
    .locals 1

    .prologue
    .line 747
    invoke-virtual {p0}, Lcom/nineoldandroids/a/n$b;->e()Lcom/nineoldandroids/a/n$b;

    move-result-object v0

    return-object v0
.end method

.method a(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 795
    iget-object v0, p0, Lcom/nineoldandroids/a/n$b;->h:Lcom/nineoldandroids/a/i;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/a/i;->b(F)I

    move-result v0

    iput v0, p0, Lcom/nineoldandroids/a/n$b;->i:I

    .line 796
    return-void
.end method

.method a(Ljava/lang/Class;)V
    .locals 1
    .param p1, "targetClass"    # Ljava/lang/Class;

    .prologue
    .line 846
    iget-object v0, p0, Lcom/nineoldandroids/a/n$b;->c:Lcom/nineoldandroids/util/c;

    if-eqz v0, :cond_0

    .line 880
    :goto_0
    return-void

    .line 878
    :cond_0
    invoke-super {p0, p1}, Lcom/nineoldandroids/a/n;->a(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public varargs a([I)V
    .locals 1
    .param p1, "values"    # [I

    .prologue
    .line 789
    invoke-super {p0, p1}, Lcom/nineoldandroids/a/n;->a([I)V

    .line 790
    iget-object v0, p0, Lcom/nineoldandroids/a/n$b;->g:Lcom/nineoldandroids/a/k;

    check-cast v0, Lcom/nineoldandroids/a/i;

    iput-object v0, p0, Lcom/nineoldandroids/a/n$b;->h:Lcom/nineoldandroids/a/i;

    .line 791
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
    .line 747
    invoke-virtual {p0}, Lcom/nineoldandroids/a/n$b;->e()Lcom/nineoldandroids/a/n$b;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 800
    iget v0, p0, Lcom/nineoldandroids/a/n$b;->i:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method d(Ljava/lang/Object;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 813
    iget-object v1, p0, Lcom/nineoldandroids/a/n$b;->j:Lcom/nineoldandroids/util/b;

    if-eqz v1, :cond_1

    .line 814
    iget-object v1, p0, Lcom/nineoldandroids/a/n$b;->j:Lcom/nineoldandroids/util/b;

    iget v2, p0, Lcom/nineoldandroids/a/n$b;->i:I

    invoke-virtual {v1, p1, v2}, Lcom/nineoldandroids/util/b;->a(Ljava/lang/Object;I)V

    .line 835
    :cond_0
    :goto_0
    return-void

    .line 817
    :cond_1
    iget-object v1, p0, Lcom/nineoldandroids/a/n$b;->c:Lcom/nineoldandroids/util/c;

    if-eqz v1, :cond_2

    .line 818
    iget-object v1, p0, Lcom/nineoldandroids/a/n$b;->c:Lcom/nineoldandroids/util/c;

    iget v2, p0, Lcom/nineoldandroids/a/n$b;->i:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/nineoldandroids/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 825
    :cond_2
    iget-object v1, p0, Lcom/nineoldandroids/a/n$b;->e:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 827
    :try_start_0
    iget-object v1, p0, Lcom/nineoldandroids/a/n$b;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nineoldandroids/a/n$b;->i:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 828
    iget-object v1, p0, Lcom/nineoldandroids/a/n$b;->e:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nineoldandroids/a/n$b;->b:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 829
    :catch_0
    move-exception v0

    .line 830
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 831
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 832
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public e()Lcom/nineoldandroids/a/n$b;
    .locals 2

    .prologue
    .line 839
    invoke-super {p0}, Lcom/nineoldandroids/a/n;->a()Lcom/nineoldandroids/a/n;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/n$b;

    .line 840
    .local v0, "newPVH":Lcom/nineoldandroids/a/n$b;
    iget-object v1, v0, Lcom/nineoldandroids/a/n$b;->g:Lcom/nineoldandroids/a/k;

    check-cast v1, Lcom/nineoldandroids/a/i;

    iput-object v1, v0, Lcom/nineoldandroids/a/n$b;->h:Lcom/nineoldandroids/a/i;

    .line 841
    return-object v0
.end method
