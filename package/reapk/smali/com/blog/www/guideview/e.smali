.class Lcom/blog/www/guideview/e;
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
            "Lcom/blog/www/guideview/e;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field a:Landroid/view/View;

.field b:I

.field c:I

.field d:I

.field e:I

.field f:I

.field g:Z

.field h:I

.field i:I

.field j:I

.field k:I

.field l:I

.field m:I

.field n:Z

.field o:Z

.field p:Z

.field q:Z

.field r:I

.field s:I

.field t:I

.field u:I

.field v:I

.field w:I

.field x:I

.field y:I

.field z:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 135
    new-instance v0, Lcom/blog/www/guideview/e$1;

    invoke-direct {v0}, Lcom/blog/www/guideview/e$1;-><init>()V

    sput-object v0, Lcom/blog/www/guideview/e;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 5

    .prologue
    const/16 v4, 0x1e

    const/16 v3, 0xa

    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/blog/www/guideview/e;->a:Landroid/view/View;

    .line 21
    iput v1, p0, Lcom/blog/www/guideview/e;->b:I

    .line 25
    iput v1, p0, Lcom/blog/www/guideview/e;->c:I

    .line 29
    iput v1, p0, Lcom/blog/www/guideview/e;->d:I

    .line 33
    iput v1, p0, Lcom/blog/www/guideview/e;->e:I

    .line 37
    iput v1, p0, Lcom/blog/www/guideview/e;->f:I

    .line 47
    const/16 v0, 0xff

    iput v0, p0, Lcom/blog/www/guideview/e;->h:I

    .line 54
    iput v2, p0, Lcom/blog/www/guideview/e;->i:I

    .line 59
    iput v2, p0, Lcom/blog/www/guideview/e;->j:I

    .line 64
    iput v1, p0, Lcom/blog/www/guideview/e;->k:I

    .line 69
    iput v1, p0, Lcom/blog/www/guideview/e;->l:I

    .line 74
    const v0, 0x106000c

    iput v0, p0, Lcom/blog/www/guideview/e;->m:I

    .line 79
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/blog/www/guideview/e;->n:Z

    .line 84
    iput-boolean v1, p0, Lcom/blog/www/guideview/e;->o:Z

    .line 86
    iput-boolean v1, p0, Lcom/blog/www/guideview/e;->p:Z

    .line 89
    iput-boolean v1, p0, Lcom/blog/www/guideview/e;->q:Z

    .line 97
    iput v2, p0, Lcom/blog/www/guideview/e;->t:I

    .line 99
    iput v2, p0, Lcom/blog/www/guideview/e;->u:I

    .line 101
    iput v4, p0, Lcom/blog/www/guideview/e;->v:I

    .line 103
    iput v4, p0, Lcom/blog/www/guideview/e;->w:I

    .line 105
    iput v3, p0, Lcom/blog/www/guideview/e;->x:I

    .line 107
    iput v3, p0, Lcom/blog/www/guideview/e;->y:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 116
    iget v0, p0, Lcom/blog/www/guideview/e;->h:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 117
    iget v0, p0, Lcom/blog/www/guideview/e;->i:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 118
    iget v0, p0, Lcom/blog/www/guideview/e;->j:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 119
    iget v0, p0, Lcom/blog/www/guideview/e;->m:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 120
    iget v0, p0, Lcom/blog/www/guideview/e;->k:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 121
    iget v0, p0, Lcom/blog/www/guideview/e;->b:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 122
    iget v0, p0, Lcom/blog/www/guideview/e;->c:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 123
    iget v0, p0, Lcom/blog/www/guideview/e;->d:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 124
    iget v0, p0, Lcom/blog/www/guideview/e;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    iget v0, p0, Lcom/blog/www/guideview/e;->f:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 126
    iget v0, p0, Lcom/blog/www/guideview/e;->l:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 127
    iget-boolean v0, p0, Lcom/blog/www/guideview/e;->n:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 128
    iget-boolean v0, p0, Lcom/blog/www/guideview/e;->o:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    int-to-byte v0, v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 129
    iget-boolean v0, p0, Lcom/blog/www/guideview/e;->q:Z

    if-eqz v0, :cond_2

    :goto_2
    int-to-byte v0, v1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 130
    iget v0, p0, Lcom/blog/www/guideview/e;->r:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 131
    iget v0, p0, Lcom/blog/www/guideview/e;->s:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 133
    return-void

    :cond_0
    move v0, v2

    .line 127
    goto :goto_0

    :cond_1
    move v0, v2

    .line 128
    goto :goto_1

    :cond_2
    move v1, v2

    .line 129
    goto :goto_2
.end method
