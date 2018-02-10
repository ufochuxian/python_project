.class public Lcom/alibaba/mtl/appmonitor/g/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/alibaba/mtl/appmonitor/g/c;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/appmonitor/g/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/alibaba/mtl/appmonitor/g/c$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/g/c$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/g/c;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/c;->a:Ljava/util/List;

    .line 58
    return-void
.end method

.method public static a()Lcom/alibaba/mtl/appmonitor/g/c;
    .locals 1

    .prologue
    .line 28
    new-instance v0, Lcom/alibaba/mtl/appmonitor/g/c;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/g/c;-><init>()V

    return-object v0
.end method

.method static a(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/g/c;
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 176
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/g/c;->a()Lcom/alibaba/mtl/appmonitor/g/c;

    move-result-object v2

    .line 178
    :try_start_0
    const-class v1, Lcom/alibaba/mtl/appmonitor/g/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v3

    .line 179
    if-eqz v3, :cond_2

    .line 180
    iget-object v1, v2, Lcom/alibaba/mtl/appmonitor/g/c;->a:Ljava/util/List;

    if-nez v1, :cond_0

    .line 181
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v2, Lcom/alibaba/mtl/appmonitor/g/c;->a:Ljava/util/List;

    :cond_0
    move v1, v0

    .line 183
    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_2

    .line 184
    aget-object v0, v3, v1

    if-eqz v0, :cond_1

    aget-object v0, v3, v1

    instance-of v0, v0, Lcom/alibaba/mtl/appmonitor/g/b;

    if-eqz v0, :cond_1

    .line 185
    iget-object v4, v2, Lcom/alibaba/mtl/appmonitor/g/c;->a:Ljava/util/List;

    aget-object v0, v3, v1

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/b;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 183
    :goto_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 187
    :cond_1
    const-string v0, "DimensionSet"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-string v6, "parcelables[i]:"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    aget-object v6, v3, v1

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 191
    :catch_0
    move-exception v0

    .line 192
    const-string v1, "DimensionSet"

    const-string v3, "[readFromParcel]"

    invoke-static {v1, v3, v0}, Lcom/alibaba/mtl/log/e/i;->a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 194
    :cond_2
    return-object v2
.end method

.method public static a(Ljava/util/Collection;)Lcom/alibaba/mtl/appmonitor/g/c;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/mtl/appmonitor/g/c;"
        }
    .end annotation

    .prologue
    .line 32
    .local p0, "dimensions":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Lcom/alibaba/mtl/appmonitor/g/c;

    invoke-direct {v1}, Lcom/alibaba/mtl/appmonitor/g/c;-><init>()V

    .line 33
    if-eqz p0, :cond_0

    .line 34
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 35
    new-instance v3, Lcom/alibaba/mtl/appmonitor/g/b;

    invoke-direct {v3, v0}, Lcom/alibaba/mtl/appmonitor/g/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/g/c;->a(Lcom/alibaba/mtl/appmonitor/g/b;)Lcom/alibaba/mtl/appmonitor/g/c;

    goto :goto_0

    .line 38
    :cond_0
    return-object v1
.end method

.method public static a([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/c;
    .locals 5
    .param p0, "dimensions"    # [Ljava/lang/String;

    .prologue
    .line 47
    new-instance v1, Lcom/alibaba/mtl/appmonitor/g/c;

    invoke-direct {v1}, Lcom/alibaba/mtl/appmonitor/g/c;-><init>()V

    .line 48
    if-eqz p0, :cond_0

    .line 49
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 50
    new-instance v4, Lcom/alibaba/mtl/appmonitor/g/b;

    invoke-direct {v4, v3}, Lcom/alibaba/mtl/appmonitor/g/b;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Lcom/alibaba/mtl/appmonitor/g/c;->a(Lcom/alibaba/mtl/appmonitor/g/b;)Lcom/alibaba/mtl/appmonitor/g/c;

    .line 49
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 53
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a(Lcom/alibaba/mtl/appmonitor/g/b;)Lcom/alibaba/mtl/appmonitor/g/c;
    .locals 1
    .param p1, "dimension"    # Lcom/alibaba/mtl/appmonitor/g/b;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    :goto_0
    return-object p0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/c;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 97
    new-instance v0, Lcom/alibaba/mtl/appmonitor/g/b;

    invoke-direct {v0, p1}, Lcom/alibaba/mtl/appmonitor/g/b;-><init>(Ljava/lang/String;)V

    .line 98
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/g/c;->a(Lcom/alibaba/mtl/appmonitor/g/b;)Lcom/alibaba/mtl/appmonitor/g/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/c;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "constantValue"    # Ljava/lang/String;

    .prologue
    .line 109
    new-instance v0, Lcom/alibaba/mtl/appmonitor/g/b;

    invoke-direct {v0, p1, p2}, Lcom/alibaba/mtl/appmonitor/g/b;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/g/c;->a(Lcom/alibaba/mtl/appmonitor/g/b;)Lcom/alibaba/mtl/appmonitor/g/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/alibaba/mtl/appmonitor/g/d;)Z
    .locals 3
    .param p1, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/g/d;

    .prologue
    const/4 v1, 0x0

    .line 61
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/c;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 62
    if-eqz p1, :cond_1

    .line 63
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/b;

    .line 64
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/b;->a()Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Lcom/alibaba/mtl/appmonitor/g/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    .line 73
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 70
    goto :goto_0

    .line 73
    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/b;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 120
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/b;

    .line 121
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 125
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/appmonitor/g/b;",
            ">;"
        }
    .end annotation

    .prologue
    .line 145
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/c;->a:Ljava/util/List;

    return-object v0
.end method

.method public b(Lcom/alibaba/mtl/appmonitor/g/d;)V
    .locals 3
    .param p1, "dimensionValues"    # Lcom/alibaba/mtl/appmonitor/g/d;

    .prologue
    .line 134
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/c;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 135
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/b;

    .line 137
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/b;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/mtl/appmonitor/g/d;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 138
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/alibaba/mtl/appmonitor/g/d;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/d;

    goto :goto_0

    .line 142
    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 157
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/c;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 159
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/c;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 160
    const/4 v0, 0x0

    .line 161
    if-eqz v3, :cond_1

    .line 162
    array-length v0, v3

    new-array v1, v0, [Lcom/alibaba/mtl/appmonitor/g/b;

    .line 163
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, v3

    if-ge v2, v0, :cond_0

    .line 164
    aget-object v0, v3, v2

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/b;

    aput-object v0, v1, v2

    .line 163
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 168
    :cond_1
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    :cond_2
    :goto_1
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
