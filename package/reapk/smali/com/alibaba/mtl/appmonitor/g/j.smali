.class public Lcom/alibaba/mtl/appmonitor/g/j;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static b:Lcom/alibaba/mtl/appmonitor/g/j;


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/appmonitor/g/i;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(I)V
    .locals 1
    .param p1, "capacity"    # I

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/j;->a:Ljava/util/List;

    .line 30
    return-void
.end method

.method public static a()Lcom/alibaba/mtl/appmonitor/g/j;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/alibaba/mtl/appmonitor/g/j;->b:Lcom/alibaba/mtl/appmonitor/g/j;

    if-nez v0, :cond_0

    .line 19
    new-instance v0, Lcom/alibaba/mtl/appmonitor/g/j;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Lcom/alibaba/mtl/appmonitor/g/j;-><init>(I)V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/g/j;->b:Lcom/alibaba/mtl/appmonitor/g/j;

    .line 21
    :cond_0
    sget-object v0, Lcom/alibaba/mtl/appmonitor/g/j;->b:Lcom/alibaba/mtl/appmonitor/g/j;

    return-object v0
.end method

.method public static a(I)Lcom/alibaba/mtl/appmonitor/g/j;
    .locals 1
    .param p0, "capacity"    # I

    .prologue
    .line 25
    new-instance v0, Lcom/alibaba/mtl/appmonitor/g/j;

    invoke-direct {v0, p0}, Lcom/alibaba/mtl/appmonitor/g/j;-><init>(I)V

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/i;
    .locals 5
    .param p1, "module"    # Ljava/lang/String;
    .param p2, "monitorPoint"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 45
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/j;->a:Ljava/util/List;

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v1

    .line 57
    :cond_1
    :goto_0
    return-object v0

    .line 48
    :cond_2
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/j;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 49
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v3, :cond_4

    .line 50
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/j;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/i;

    .line 51
    if-eqz v0, :cond_3

    .line 52
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/i;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/i;->e()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 49
    :cond_3
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_4
    move-object v0, v1

    .line 57
    goto :goto_0
.end method

.method public a(Lcom/alibaba/mtl/appmonitor/g/i;)V
    .locals 1
    .param p1, "metric"    # Lcom/alibaba/mtl/appmonitor/g/i;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_0
    return-void
.end method

.method public b(Lcom/alibaba/mtl/appmonitor/g/i;)Z
    .locals 1
    .param p1, "metric"    # Lcom/alibaba/mtl/appmonitor/g/i;

    .prologue
    .line 38
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/j;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 41
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
