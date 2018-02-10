.class final Landroid/support/v4/app/u;
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
            "Landroid/support/v4/app/u;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field final a:[I

.field final b:I

.field final c:I

.field final d:Ljava/lang/String;

.field final e:I

.field final f:I

.field final g:Ljava/lang/CharSequence;

.field final h:I

.field final i:Ljava/lang/CharSequence;

.field final j:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final k:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final l:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 157
    new-instance v0, Landroid/support/v4/app/u$1;

    invoke-direct {v0}, Landroid/support/v4/app/u$1;-><init>()V

    sput-object v0, Landroid/support/v4/app/u;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/u;->a:[I

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/u;->b:I

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/u;->c:I

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/u;->d:Ljava/lang/String;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/u;->e:I

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/u;->f:I

    .line 85
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/u;->g:Ljava/lang/CharSequence;

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/support/v4/app/u;->h:I

    .line 87
    sget-object v0, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    iput-object v0, p0, Landroid/support/v4/app/u;->i:Ljava/lang/CharSequence;

    .line 88
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/u;->j:Ljava/util/ArrayList;

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->createStringArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    .line 90
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/support/v4/app/u;->l:Z

    .line 91
    return-void

    .line 90
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/support/v4/app/t;)V
    .locals 7
    .param p1, "bse"    # Landroid/support/v4/app/t;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iget-object v5, p1, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 49
    .local v0, "numOps":I
    mul-int/lit8 v5, v0, 0x6

    new-array v5, v5, [I

    iput-object v5, p0, Landroid/support/v4/app/u;->a:[I

    .line 51
    iget-boolean v5, p1, Landroid/support/v4/app/t;->s:Z

    if-nez v5, :cond_0

    .line 52
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Not on back stack"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 55
    :cond_0
    const/4 v3, 0x0

    .line 56
    .local v3, "pos":I
    const/4 v2, 0x0

    .local v2, "opNum":I
    move v4, v3

    .end local v3    # "pos":I
    .local v4, "pos":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 57
    iget-object v5, p1, Landroid/support/v4/app/t;->l:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/t$a;

    .line 58
    .local v1, "op":Landroid/support/v4/app/t$a;
    iget-object v5, p0, Landroid/support/v4/app/u;->a:[I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    iget v6, v1, Landroid/support/v4/app/t$a;->a:I

    aput v6, v5, v4

    .line 59
    iget-object v6, p0, Landroid/support/v4/app/u;->a:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    iget-object v5, v1, Landroid/support/v4/app/t$a;->b:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_1

    iget-object v5, v1, Landroid/support/v4/app/t$a;->b:Landroid/support/v4/app/Fragment;

    iget v5, v5, Landroid/support/v4/app/Fragment;->mIndex:I

    :goto_1
    aput v5, v6, v3

    .line 60
    iget-object v5, p0, Landroid/support/v4/app/u;->a:[I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    iget v6, v1, Landroid/support/v4/app/t$a;->c:I

    aput v6, v5, v4

    .line 61
    iget-object v5, p0, Landroid/support/v4/app/u;->a:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    iget v6, v1, Landroid/support/v4/app/t$a;->d:I

    aput v6, v5, v3

    .line 62
    iget-object v5, p0, Landroid/support/v4/app/u;->a:[I

    add-int/lit8 v3, v4, 0x1

    .end local v4    # "pos":I
    .restart local v3    # "pos":I
    iget v6, v1, Landroid/support/v4/app/t$a;->e:I

    aput v6, v5, v4

    .line 63
    iget-object v5, p0, Landroid/support/v4/app/u;->a:[I

    add-int/lit8 v4, v3, 0x1

    .end local v3    # "pos":I
    .restart local v4    # "pos":I
    iget v6, v1, Landroid/support/v4/app/t$a;->f:I

    aput v6, v5, v3

    .line 56
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 59
    :cond_1
    const/4 v5, -0x1

    goto :goto_1

    .line 65
    .end local v1    # "op":Landroid/support/v4/app/t$a;
    :cond_2
    iget v5, p1, Landroid/support/v4/app/t;->q:I

    iput v5, p0, Landroid/support/v4/app/u;->b:I

    .line 66
    iget v5, p1, Landroid/support/v4/app/t;->r:I

    iput v5, p0, Landroid/support/v4/app/u;->c:I

    .line 67
    iget-object v5, p1, Landroid/support/v4/app/t;->u:Ljava/lang/String;

    iput-object v5, p0, Landroid/support/v4/app/u;->d:Ljava/lang/String;

    .line 68
    iget v5, p1, Landroid/support/v4/app/t;->w:I

    iput v5, p0, Landroid/support/v4/app/u;->e:I

    .line 69
    iget v5, p1, Landroid/support/v4/app/t;->x:I

    iput v5, p0, Landroid/support/v4/app/u;->f:I

    .line 70
    iget-object v5, p1, Landroid/support/v4/app/t;->y:Ljava/lang/CharSequence;

    iput-object v5, p0, Landroid/support/v4/app/u;->g:Ljava/lang/CharSequence;

    .line 71
    iget v5, p1, Landroid/support/v4/app/t;->z:I

    iput v5, p0, Landroid/support/v4/app/u;->h:I

    .line 72
    iget-object v5, p1, Landroid/support/v4/app/t;->A:Ljava/lang/CharSequence;

    iput-object v5, p0, Landroid/support/v4/app/u;->i:Ljava/lang/CharSequence;

    .line 73
    iget-object v5, p1, Landroid/support/v4/app/t;->B:Ljava/util/ArrayList;

    iput-object v5, p0, Landroid/support/v4/app/u;->j:Ljava/util/ArrayList;

    .line 74
    iget-object v5, p1, Landroid/support/v4/app/t;->C:Ljava/util/ArrayList;

    iput-object v5, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    .line 75
    iget-boolean v5, p1, Landroid/support/v4/app/t;->D:Z

    iput-boolean v5, p0, Landroid/support/v4/app/u;->l:Z

    .line 76
    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/app/ah;)Landroid/support/v4/app/t;
    .locals 11
    .param p1, "fm"    # Landroid/support/v4/app/ah;

    .prologue
    const/4 v10, 0x1

    .line 94
    new-instance v0, Landroid/support/v4/app/t;

    invoke-direct {v0, p1}, Landroid/support/v4/app/t;-><init>(Landroid/support/v4/app/ah;)V

    .line 95
    .local v0, "bse":Landroid/support/v4/app/t;
    const/4 v5, 0x0

    .line 96
    .local v5, "pos":I
    const/4 v3, 0x0

    .line 97
    .local v3, "num":I
    :goto_0
    iget-object v7, p0, Landroid/support/v4/app/u;->a:[I

    array-length v7, v7

    if-ge v5, v7, :cond_2

    .line 98
    new-instance v4, Landroid/support/v4/app/t$a;

    invoke-direct {v4}, Landroid/support/v4/app/t$a;-><init>()V

    .line 99
    .local v4, "op":Landroid/support/v4/app/t$a;
    iget-object v7, p0, Landroid/support/v4/app/u;->a:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .local v6, "pos":I
    aget v7, v7, v5

    iput v7, v4, Landroid/support/v4/app/t$a;->a:I

    .line 100
    sget-boolean v7, Landroid/support/v4/app/ah;->b:Z

    if-eqz v7, :cond_0

    const-string v7, "FragmentManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Instantiate "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " op #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " base fragment #"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Landroid/support/v4/app/u;->a:[I

    aget v9, v9, v6

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    :cond_0
    iget-object v7, p0, Landroid/support/v4/app/u;->a:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    aget v2, v7, v6

    .line 103
    .local v2, "findex":I
    if-ltz v2, :cond_1

    .line 104
    iget-object v7, p1, Landroid/support/v4/app/ah;->l:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/Fragment;

    .line 105
    .local v1, "f":Landroid/support/v4/app/Fragment;
    iput-object v1, v4, Landroid/support/v4/app/t$a;->b:Landroid/support/v4/app/Fragment;

    .line 109
    .end local v1    # "f":Landroid/support/v4/app/Fragment;
    :goto_1
    iget-object v7, p0, Landroid/support/v4/app/u;->a:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    aget v7, v7, v5

    iput v7, v4, Landroid/support/v4/app/t$a;->c:I

    .line 110
    iget-object v7, p0, Landroid/support/v4/app/u;->a:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    aget v7, v7, v6

    iput v7, v4, Landroid/support/v4/app/t$a;->d:I

    .line 111
    iget-object v7, p0, Landroid/support/v4/app/u;->a:[I

    add-int/lit8 v6, v5, 0x1

    .end local v5    # "pos":I
    .restart local v6    # "pos":I
    aget v7, v7, v5

    iput v7, v4, Landroid/support/v4/app/t$a;->e:I

    .line 112
    iget-object v7, p0, Landroid/support/v4/app/u;->a:[I

    add-int/lit8 v5, v6, 0x1

    .end local v6    # "pos":I
    .restart local v5    # "pos":I
    aget v7, v7, v6

    iput v7, v4, Landroid/support/v4/app/t$a;->f:I

    .line 113
    iget v7, v4, Landroid/support/v4/app/t$a;->c:I

    iput v7, v0, Landroid/support/v4/app/t;->m:I

    .line 114
    iget v7, v4, Landroid/support/v4/app/t$a;->d:I

    iput v7, v0, Landroid/support/v4/app/t;->n:I

    .line 115
    iget v7, v4, Landroid/support/v4/app/t$a;->e:I

    iput v7, v0, Landroid/support/v4/app/t;->o:I

    .line 116
    iget v7, v4, Landroid/support/v4/app/t$a;->f:I

    iput v7, v0, Landroid/support/v4/app/t;->p:I

    .line 117
    invoke-virtual {v0, v4}, Landroid/support/v4/app/t;->a(Landroid/support/v4/app/t$a;)V

    .line 118
    add-int/lit8 v3, v3, 0x1

    .line 119
    goto/16 :goto_0

    .line 107
    :cond_1
    const/4 v7, 0x0

    iput-object v7, v4, Landroid/support/v4/app/t$a;->b:Landroid/support/v4/app/Fragment;

    goto :goto_1

    .line 120
    .end local v2    # "findex":I
    .end local v4    # "op":Landroid/support/v4/app/t$a;
    :cond_2
    iget v7, p0, Landroid/support/v4/app/u;->b:I

    iput v7, v0, Landroid/support/v4/app/t;->q:I

    .line 121
    iget v7, p0, Landroid/support/v4/app/u;->c:I

    iput v7, v0, Landroid/support/v4/app/t;->r:I

    .line 122
    iget-object v7, p0, Landroid/support/v4/app/u;->d:Ljava/lang/String;

    iput-object v7, v0, Landroid/support/v4/app/t;->u:Ljava/lang/String;

    .line 123
    iget v7, p0, Landroid/support/v4/app/u;->e:I

    iput v7, v0, Landroid/support/v4/app/t;->w:I

    .line 124
    iput-boolean v10, v0, Landroid/support/v4/app/t;->s:Z

    .line 125
    iget v7, p0, Landroid/support/v4/app/u;->f:I

    iput v7, v0, Landroid/support/v4/app/t;->x:I

    .line 126
    iget-object v7, p0, Landroid/support/v4/app/u;->g:Ljava/lang/CharSequence;

    iput-object v7, v0, Landroid/support/v4/app/t;->y:Ljava/lang/CharSequence;

    .line 127
    iget v7, p0, Landroid/support/v4/app/u;->h:I

    iput v7, v0, Landroid/support/v4/app/t;->z:I

    .line 128
    iget-object v7, p0, Landroid/support/v4/app/u;->i:Ljava/lang/CharSequence;

    iput-object v7, v0, Landroid/support/v4/app/t;->A:Ljava/lang/CharSequence;

    .line 129
    iget-object v7, p0, Landroid/support/v4/app/u;->j:Ljava/util/ArrayList;

    iput-object v7, v0, Landroid/support/v4/app/t;->B:Ljava/util/ArrayList;

    .line 130
    iget-object v7, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    iput-object v7, v0, Landroid/support/v4/app/t;->C:Ljava/util/ArrayList;

    .line 131
    iget-boolean v7, p0, Landroid/support/v4/app/u;->l:Z

    iput-boolean v7, v0, Landroid/support/v4/app/t;->D:Z

    .line 132
    invoke-virtual {v0, v10}, Landroid/support/v4/app/t;->e(I)V

    .line 133
    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 138
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v0, 0x0

    .line 143
    iget-object v1, p0, Landroid/support/v4/app/u;->a:[I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 144
    iget v1, p0, Landroid/support/v4/app/u;->b:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    iget v1, p0, Landroid/support/v4/app/u;->c:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 146
    iget-object v1, p0, Landroid/support/v4/app/u;->d:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget v1, p0, Landroid/support/v4/app/u;->e:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    iget v1, p0, Landroid/support/v4/app/u;->f:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    iget-object v1, p0, Landroid/support/v4/app/u;->g:Ljava/lang/CharSequence;

    invoke-static {v1, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 150
    iget v1, p0, Landroid/support/v4/app/u;->h:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 151
    iget-object v1, p0, Landroid/support/v4/app/u;->i:Ljava/lang/CharSequence;

    invoke-static {v1, p1, v0}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 152
    iget-object v1, p0, Landroid/support/v4/app/u;->j:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 153
    iget-object v1, p0, Landroid/support/v4/app/u;->k:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 154
    iget-boolean v1, p0, Landroid/support/v4/app/u;->l:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    return-void
.end method
