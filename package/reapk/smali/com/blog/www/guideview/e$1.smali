.class final Lcom/blog/www/guideview/e$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/blog/www/guideview/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/blog/www/guideview/e;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Parcel;)Lcom/blog/www/guideview/e;
    .locals 4
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 138
    new-instance v0, Lcom/blog/www/guideview/e;

    invoke-direct {v0}, Lcom/blog/www/guideview/e;-><init>()V

    .line 139
    .local v0, "conf":Lcom/blog/www/guideview/e;
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/blog/www/guideview/e;->h:I

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/blog/www/guideview/e;->i:I

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/blog/www/guideview/e;->j:I

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/blog/www/guideview/e;->m:I

    .line 143
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/blog/www/guideview/e;->k:I

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/blog/www/guideview/e;->b:I

    .line 145
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/blog/www/guideview/e;->c:I

    .line 146
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/blog/www/guideview/e;->d:I

    .line 147
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/blog/www/guideview/e;->e:I

    .line 148
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/blog/www/guideview/e;->f:I

    .line 149
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/blog/www/guideview/e;->l:I

    .line 150
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    :goto_0
    iput-boolean v1, v0, Lcom/blog/www/guideview/e;->n:Z

    .line 151
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_1

    move v1, v2

    :goto_1
    iput-boolean v1, v0, Lcom/blog/www/guideview/e;->o:Z

    .line 152
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v1

    if-ne v1, v2, :cond_2

    :goto_2
    iput-boolean v2, v0, Lcom/blog/www/guideview/e;->q:Z

    .line 153
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/blog/www/guideview/e;->s:I

    .line 154
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, v0, Lcom/blog/www/guideview/e;->r:I

    .line 155
    return-object v0

    :cond_0
    move v1, v3

    .line 150
    goto :goto_0

    :cond_1
    move v1, v3

    .line 151
    goto :goto_1

    :cond_2
    move v2, v3

    .line 152
    goto :goto_2
.end method

.method public a(I)[Lcom/blog/www/guideview/e;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 159
    new-array v0, p1, [Lcom/blog/www/guideview/e;

    return-object v0
.end method

.method public synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/blog/www/guideview/e$1;->a(Landroid/os/Parcel;)Lcom/blog/www/guideview/e;

    move-result-object v0

    return-object v0
.end method

.method public synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 135
    invoke-virtual {p0, p1}, Lcom/blog/www/guideview/e$1;->a(I)[Lcom/blog/www/guideview/e;

    move-result-object v0

    return-object v0
.end method
