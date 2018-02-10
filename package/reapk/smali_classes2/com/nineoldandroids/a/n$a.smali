.class Lcom/nineoldandroids/a/n$a;
.super Lcom/nineoldandroids/a/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nineoldandroids/a/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field h:Lcom/nineoldandroids/a/g;

.field i:F

.field private j:Lcom/nineoldandroids/util/a;


# direct methods
.method public constructor <init>(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/a/g;)V
    .locals 1
    .param p1, "property"    # Lcom/nineoldandroids/util/c;
    .param p2, "keyframeSet"    # Lcom/nineoldandroids/a/g;

    .prologue
    .line 901
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/a/n;-><init>(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/a/n$1;)V

    .line 902
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/a/n$a;->f:Ljava/lang/Class;

    .line 903
    iput-object p2, p0, Lcom/nineoldandroids/a/n$a;->g:Lcom/nineoldandroids/a/k;

    .line 904
    iget-object v0, p0, Lcom/nineoldandroids/a/n$a;->g:Lcom/nineoldandroids/a/k;

    check-cast v0, Lcom/nineoldandroids/a/g;

    iput-object v0, p0, Lcom/nineoldandroids/a/n$a;->h:Lcom/nineoldandroids/a/g;

    .line 905
    instance-of v0, p1, Lcom/nineoldandroids/util/a;

    if-eqz v0, :cond_0

    .line 906
    iget-object v0, p0, Lcom/nineoldandroids/a/n$a;->c:Lcom/nineoldandroids/util/c;

    check-cast v0, Lcom/nineoldandroids/util/a;

    iput-object v0, p0, Lcom/nineoldandroids/a/n$a;->j:Lcom/nineoldandroids/util/a;

    .line 908
    :cond_0
    return-void
.end method

.method public varargs constructor <init>(Lcom/nineoldandroids/util/c;[F)V
    .locals 1
    .param p1, "property"    # Lcom/nineoldandroids/util/c;
    .param p2, "values"    # [F

    .prologue
    .line 916
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/a/n;-><init>(Lcom/nineoldandroids/util/c;Lcom/nineoldandroids/a/n$1;)V

    .line 917
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/a/n$a;->a([F)V

    .line 918
    instance-of v0, p1, Lcom/nineoldandroids/util/a;

    if-eqz v0, :cond_0

    .line 919
    iget-object v0, p0, Lcom/nineoldandroids/a/n$a;->c:Lcom/nineoldandroids/util/c;

    check-cast v0, Lcom/nineoldandroids/util/a;

    iput-object v0, p0, Lcom/nineoldandroids/a/n$a;->j:Lcom/nineoldandroids/util/a;

    .line 921
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/nineoldandroids/a/g;)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "keyframeSet"    # Lcom/nineoldandroids/a/g;

    .prologue
    .line 894
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/a/n;-><init>(Ljava/lang/String;Lcom/nineoldandroids/a/n$1;)V

    .line 895
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    iput-object v0, p0, Lcom/nineoldandroids/a/n$a;->f:Ljava/lang/Class;

    .line 896
    iput-object p2, p0, Lcom/nineoldandroids/a/n$a;->g:Lcom/nineoldandroids/a/k;

    .line 897
    iget-object v0, p0, Lcom/nineoldandroids/a/n$a;->g:Lcom/nineoldandroids/a/k;

    check-cast v0, Lcom/nineoldandroids/a/g;

    iput-object v0, p0, Lcom/nineoldandroids/a/n$a;->h:Lcom/nineoldandroids/a/g;

    .line 898
    return-void
.end method

.method public varargs constructor <init>(Ljava/lang/String;[F)V
    .locals 1
    .param p1, "propertyName"    # Ljava/lang/String;
    .param p2, "values"    # [F

    .prologue
    .line 911
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/nineoldandroids/a/n;-><init>(Ljava/lang/String;Lcom/nineoldandroids/a/n$1;)V

    .line 912
    invoke-virtual {p0, p2}, Lcom/nineoldandroids/a/n$a;->a([F)V

    .line 913
    return-void
.end method


# virtual methods
.method public synthetic a()Lcom/nineoldandroids/a/n;
    .locals 1

    .prologue
    .line 883
    invoke-virtual {p0}, Lcom/nineoldandroids/a/n$a;->e()Lcom/nineoldandroids/a/n$a;

    move-result-object v0

    return-object v0
.end method

.method a(F)V
    .locals 1
    .param p1, "fraction"    # F

    .prologue
    .line 931
    iget-object v0, p0, Lcom/nineoldandroids/a/n$a;->h:Lcom/nineoldandroids/a/g;

    invoke-virtual {v0, p1}, Lcom/nineoldandroids/a/g;->b(F)F

    move-result v0

    iput v0, p0, Lcom/nineoldandroids/a/n$a;->i:F

    .line 932
    return-void
.end method

.method a(Ljava/lang/Class;)V
    .locals 1
    .param p1, "targetClass"    # Ljava/lang/Class;

    .prologue
    .line 982
    iget-object v0, p0, Lcom/nineoldandroids/a/n$a;->c:Lcom/nineoldandroids/util/c;

    if-eqz v0, :cond_0

    .line 1016
    :goto_0
    return-void

    .line 1014
    :cond_0
    invoke-super {p0, p1}, Lcom/nineoldandroids/a/n;->a(Ljava/lang/Class;)V

    goto :goto_0
.end method

.method public varargs a([F)V
    .locals 1
    .param p1, "values"    # [F

    .prologue
    .line 925
    invoke-super {p0, p1}, Lcom/nineoldandroids/a/n;->a([F)V

    .line 926
    iget-object v0, p0, Lcom/nineoldandroids/a/n$a;->g:Lcom/nineoldandroids/a/k;

    check-cast v0, Lcom/nineoldandroids/a/g;

    iput-object v0, p0, Lcom/nineoldandroids/a/n$a;->h:Lcom/nineoldandroids/a/g;

    .line 927
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
    .line 883
    invoke-virtual {p0}, Lcom/nineoldandroids/a/n$a;->e()Lcom/nineoldandroids/a/n$a;

    move-result-object v0

    return-object v0
.end method

.method d()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 936
    iget v0, p0, Lcom/nineoldandroids/a/n$a;->i:F

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method d(Ljava/lang/Object;)V
    .locals 4
    .param p1, "target"    # Ljava/lang/Object;

    .prologue
    .line 949
    iget-object v1, p0, Lcom/nineoldandroids/a/n$a;->j:Lcom/nineoldandroids/util/a;

    if-eqz v1, :cond_1

    .line 950
    iget-object v1, p0, Lcom/nineoldandroids/a/n$a;->j:Lcom/nineoldandroids/util/a;

    iget v2, p0, Lcom/nineoldandroids/a/n$a;->i:F

    invoke-virtual {v1, p1, v2}, Lcom/nineoldandroids/util/a;->a(Ljava/lang/Object;F)V

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 953
    :cond_1
    iget-object v1, p0, Lcom/nineoldandroids/a/n$a;->c:Lcom/nineoldandroids/util/c;

    if-eqz v1, :cond_2

    .line 954
    iget-object v1, p0, Lcom/nineoldandroids/a/n$a;->c:Lcom/nineoldandroids/util/c;

    iget v2, p0, Lcom/nineoldandroids/a/n$a;->i:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/nineoldandroids/util/c;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 961
    :cond_2
    iget-object v1, p0, Lcom/nineoldandroids/a/n$a;->e:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_0

    .line 963
    :try_start_0
    iget-object v1, p0, Lcom/nineoldandroids/a/n$a;->b:[Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/nineoldandroids/a/n$a;->i:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    .line 964
    iget-object v1, p0, Lcom/nineoldandroids/a/n$a;->e:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lcom/nineoldandroids/a/n$a;->b:[Ljava/lang/Object;

    invoke-virtual {v1, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 965
    :catch_0
    move-exception v0

    .line 966
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 967
    .end local v0    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 968
    .local v0, "e":Ljava/lang/IllegalAccessException;
    const-string v1, "PropertyValuesHolder"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public e()Lcom/nineoldandroids/a/n$a;
    .locals 2

    .prologue
    .line 975
    invoke-super {p0}, Lcom/nineoldandroids/a/n;->a()Lcom/nineoldandroids/a/n;

    move-result-object v0

    check-cast v0, Lcom/nineoldandroids/a/n$a;

    .line 976
    .local v0, "newPVH":Lcom/nineoldandroids/a/n$a;
    iget-object v1, v0, Lcom/nineoldandroids/a/n$a;->g:Lcom/nineoldandroids/a/k;

    check-cast v1, Lcom/nineoldandroids/a/g;

    iput-object v1, v0, Lcom/nineoldandroids/a/n$a;->h:Lcom/nineoldandroids/a/g;

    .line 977
    return-object v0
.end method
