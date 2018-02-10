.class public Lcom/alibaba/mtl/appmonitor/g/f;
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
            "Lcom/alibaba/mtl/appmonitor/g/f;",
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
            "Lcom/alibaba/mtl/appmonitor/g/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 189
    new-instance v0, Lcom/alibaba/mtl/appmonitor/g/f$1;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/g/f$1;-><init>()V

    sput-object v0, Lcom/alibaba/mtl/appmonitor/g/f;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    .line 60
    return-void
.end method

.method public static a()Lcom/alibaba/mtl/appmonitor/g/f;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/alibaba/mtl/appmonitor/g/f;

    invoke-direct {v0}, Lcom/alibaba/mtl/appmonitor/g/f;-><init>()V

    return-object v0
.end method

.method static a(Landroid/os/Parcel;)Lcom/alibaba/mtl/appmonitor/g/f;
    .locals 5

    .prologue
    .line 172
    invoke-static {}, Lcom/alibaba/mtl/appmonitor/g/f;->a()Lcom/alibaba/mtl/appmonitor/g/f;

    move-result-object v3

    .line 174
    :try_start_0
    const-class v0, Lcom/alibaba/mtl/appmonitor/g/f;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Parcel;->readParcelableArray(Ljava/lang/ClassLoader;)[Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, [Landroid/os/Parcelable;

    .line 176
    if-eqz v0, :cond_1

    .line 177
    new-instance v4, Ljava/util/ArrayList;

    array-length v1, v0

    invoke-direct {v4, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 178
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v1, v0

    if-ge v2, v1, :cond_0

    .line 179
    aget-object v1, v0, v2

    check-cast v1, Lcom/alibaba/mtl/appmonitor/g/e;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 181
    :cond_0
    iput-object v4, v3, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 186
    :cond_1
    :goto_1
    return-object v3

    .line 183
    :catch_0
    move-exception v0

    .line 184
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_1
.end method

.method public static a(Ljava/util/Collection;)Lcom/alibaba/mtl/appmonitor/g/f;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/alibaba/mtl/appmonitor/g/f;"
        }
    .end annotation

    .prologue
    .line 34
    .local p0, "measures":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    new-instance v1, Lcom/alibaba/mtl/appmonitor/g/f;

    invoke-direct {v1}, Lcom/alibaba/mtl/appmonitor/g/f;-><init>()V

    .line 35
    if-eqz p0, :cond_0

    .line 36
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 37
    invoke-virtual {v1, v0}, Lcom/alibaba/mtl/appmonitor/g/f;->a(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/f;

    goto :goto_0

    .line 40
    :cond_0
    return-object v1
.end method

.method public static a([Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/f;
    .locals 4
    .param p0, "measures"    # [Ljava/lang/String;

    .prologue
    .line 49
    new-instance v1, Lcom/alibaba/mtl/appmonitor/g/f;

    invoke-direct {v1}, Lcom/alibaba/mtl/appmonitor/g/f;-><init>()V

    .line 50
    if-eqz p0, :cond_0

    .line 51
    array-length v2, p0

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p0, v0

    .line 52
    invoke-virtual {v1, v3}, Lcom/alibaba/mtl/appmonitor/g/f;->a(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/f;

    .line 51
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    return-object v1
.end method


# virtual methods
.method public a(Lcom/alibaba/mtl/appmonitor/g/e;)Lcom/alibaba/mtl/appmonitor/g/f;
    .locals 1
    .param p1, "measure"    # Lcom/alibaba/mtl/appmonitor/g/e;

    .prologue
    .line 91
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    :cond_0
    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/f;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 104
    new-instance v0, Lcom/alibaba/mtl/appmonitor/g/e;

    invoke-direct {v0, p1}, Lcom/alibaba/mtl/appmonitor/g/e;-><init>(Ljava/lang/String;)V

    .line 105
    invoke-virtual {p0, v0}, Lcom/alibaba/mtl/appmonitor/g/f;->a(Lcom/alibaba/mtl/appmonitor/g/e;)Lcom/alibaba/mtl/appmonitor/g/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/alibaba/mtl/appmonitor/g/e;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "configMeasures":Ljava/util/List;, "Ljava/util/List<Lcom/alibaba/mtl/appmonitor/g/e;>;"
    const/4 v3, 0x0

    .line 203
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v5

    .line 204
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v6

    move v4, v3

    .line 205
    :goto_0
    if-ge v4, v5, :cond_2

    move v2, v3

    .line 206
    :goto_1
    if-ge v2, v6, :cond_1

    .line 207
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/e;

    iget-object v1, v0, Lcom/alibaba/mtl/appmonitor/g/e;->c:Ljava/lang/String;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/e;

    iget-object v0, v0, Lcom/alibaba/mtl/appmonitor/g/e;->c:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 208
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/e;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/g/e;

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/g/e;->b()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/g/e;->b(Ljava/lang/Double;)V

    .line 209
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/e;

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/alibaba/mtl/appmonitor/g/e;

    invoke-virtual {v1}, Lcom/alibaba/mtl/appmonitor/g/e;->a()Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/alibaba/mtl/appmonitor/g/e;->a(Ljava/lang/Double;)V

    .line 206
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 205
    :cond_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 213
    :cond_2
    return-void
.end method

.method public a(Lcom/alibaba/mtl/appmonitor/g/h;)Z
    .locals 5
    .param p1, "measureValues"    # Lcom/alibaba/mtl/appmonitor/g/h;

    .prologue
    const/4 v2, 0x0

    .line 63
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 64
    if-eqz p1, :cond_0

    move v1, v2

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 66
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/e;

    .line 67
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/e;->c()Ljava/lang/String;

    move-result-object v3

    .line 69
    invoke-virtual {p1, v3}, Lcom/alibaba/mtl/appmonitor/g/h;->b(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 81
    :cond_0
    :goto_1
    return v2

    .line 72
    :cond_1
    invoke-virtual {p1, v3}, Lcom/alibaba/mtl/appmonitor/g/h;->a(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/g;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/g/e;->a(Lcom/alibaba/mtl/appmonitor/g/g;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 81
    :cond_3
    const/4 v2, 0x1

    goto :goto_1
.end method

.method public b(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/e;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 115
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/e;

    .line 116
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 120
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
            "Lcom/alibaba/mtl/appmonitor/g/e;",
            ">;"
        }
    .end annotation

    .prologue
    .line 124
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    return-object v0
.end method

.method public b(Lcom/alibaba/mtl/appmonitor/g/e;)V
    .locals 4
    .param p1, "newMeasure"    # Lcom/alibaba/mtl/appmonitor/g/e;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 217
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_1

    .line 218
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/e;

    iget-object v0, v0, Lcom/alibaba/mtl/appmonitor/g/e;->c:Ljava/lang/String;

    iget-object v3, p1, Lcom/alibaba/mtl/appmonitor/g/e;->c:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/e;

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/g/e;->b()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/g/e;->b(Ljava/lang/Double;)V

    .line 220
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/e;

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/g/e;->a()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/g/e;->a(Ljava/lang/Double;)V

    .line 221
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/e;

    invoke-virtual {p1}, Lcom/alibaba/mtl/appmonitor/g/e;->d()Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/alibaba/mtl/appmonitor/g/e;->c(Ljava/lang/Double;)V

    .line 217
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 224
    :cond_1
    return-void
.end method

.method public b(Lcom/alibaba/mtl/appmonitor/g/h;)V
    .locals 6
    .param p1, "measureValues"    # Lcom/alibaba/mtl/appmonitor/g/h;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 134
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/e;

    .line 136
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/e;->d()Ljava/lang/Double;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/alibaba/mtl/appmonitor/g/h;->a(Ljava/lang/String;)Lcom/alibaba/mtl/appmonitor/g/g;

    move-result-object v2

    if-nez v2, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/e;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/alibaba/mtl/appmonitor/g/e;->d()Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {p1, v2, v4, v5}, Lcom/alibaba/mtl/appmonitor/g/h;->a(Ljava/lang/String;D)Lcom/alibaba/mtl/appmonitor/g/h;

    goto :goto_0

    .line 141
    :cond_1
    return-void
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 151
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 153
    :try_start_0
    iget-object v0, p0, Lcom/alibaba/mtl/appmonitor/g/f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v3

    .line 154
    const/4 v0, 0x0

    .line 155
    if-eqz v3, :cond_1

    .line 156
    array-length v0, v3

    new-array v1, v0, [Lcom/alibaba/mtl/appmonitor/g/e;

    .line 157
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    array-length v0, v3

    if-ge v2, v0, :cond_0

    .line 158
    aget-object v0, v3, v2

    check-cast v0, Lcom/alibaba/mtl/appmonitor/g/e;

    aput-object v0, v1, v2

    .line 157
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    move-object v0, v1

    .line 162
    :cond_1
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelableArray([Landroid/os/Parcelable;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 169
    :cond_2
    :goto_1
    return-void

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
