.class public abstract Landroid/support/v4/media/session/b$a;
.super Landroid/os/Binder;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/media/session/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/media/session/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/b$a$a;
    }
.end annotation


# static fields
.field static final A:I = 0x23

.field static final B:I = 0x24

.field static final C:I = 0xd

.field static final D:I = 0xe

.field static final E:I = 0xf

.field static final F:I = 0x10

.field static final G:I = 0x11

.field static final H:I = 0x12

.field static final I:I = 0x13

.field static final J:I = 0x14

.field static final K:I = 0x15

.field static final L:I = 0x16

.field static final M:I = 0x17

.field static final N:I = 0x18

.field static final O:I = 0x19

.field static final P:I = 0x27

.field static final Q:I = 0x28

.field static final R:I = 0x1a

.field private static final S:Ljava/lang/String; = "android.support.v4.media.session.IMediaSession"

.field static final a:I = 0x1

.field static final b:I = 0x2

.field static final c:I = 0x3

.field static final d:I = 0x4

.field static final e:I = 0x5

.field static final f:I = 0x6

.field static final g:I = 0x7

.field static final h:I = 0x8

.field static final i:I = 0x9

.field static final j:I = 0xa

.field static final k:I = 0xb

.field static final l:I = 0xc

.field static final m:I = 0x1b

.field static final n:I = 0x1c

.field static final o:I = 0x1d

.field static final p:I = 0x1e

.field static final q:I = 0x1f

.field static final r:I = 0x20

.field static final s:I = 0x25

.field static final t:I = 0x26

.field static final u:I = 0x29

.field static final v:I = 0x2a

.field static final w:I = 0x2b

.field static final x:I = 0x2c

.field static final y:I = 0x21

.field static final z:I = 0x22


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 19
    const-string v0, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p0, p0, v0}, Landroid/support/v4/media/session/b$a;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 20
    return-void
.end method

.method public static a(Landroid/os/IBinder;)Landroid/support/v4/media/session/b;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 34
    :goto_0
    return-object v0

    .line 30
    :cond_0
    const-string v1, "android.support.v4.media.session.IMediaSession"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 31
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/support/v4/media/session/b;

    if-eqz v1, :cond_1

    .line 32
    check-cast v0, Landroid/support/v4/media/session/b;

    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/support/v4/media/session/b$a$a;

    .end local v0    # "iin":Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/support/v4/media/session/b$a$a;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 38
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 42
    sparse-switch p1, :sswitch_data_0

    .line 561
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v8

    :goto_0
    return v8

    .line 46
    :sswitch_0
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 51
    :sswitch_1
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 53
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 55
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_0

    .line 56
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 62
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_1

    .line 63
    sget-object v7, Landroid/support/v4/media/session/g$g;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v4/media/session/g$g;

    .line 68
    .local v3, "_arg2":Landroid/support/v4/media/session/g$g;
    :goto_2
    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v4/media/session/b$a;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/support/v4/media/session/g$g;)V

    .line 69
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 59
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/support/v4/media/session/g$g;
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_1

    .line 66
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "_arg2":Landroid/support/v4/media/session/g$g;
    goto :goto_2

    .line 74
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    .end local v3    # "_arg2":Landroid/support/v4/media/session/g$g;
    :sswitch_2
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_3

    .line 77
    sget-object v9, Landroid/view/KeyEvent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v9, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 82
    .local v0, "_arg0":Landroid/view/KeyEvent;
    :goto_3
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/b$a;->a(Landroid/view/KeyEvent;)Z

    move-result v4

    .line 83
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 84
    if-eqz v4, :cond_2

    move v7, v8

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 80
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    .end local v4    # "_result":Z
    :cond_3
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/view/KeyEvent;
    goto :goto_3

    .line 89
    .end local v0    # "_arg0":Landroid/view/KeyEvent;
    :sswitch_3
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 91
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/media/session/a$a;->a(Landroid/os/IBinder;)Landroid/support/v4/media/session/a;

    move-result-object v0

    .line 92
    .local v0, "_arg0":Landroid/support/v4/media/session/a;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/b$a;->a(Landroid/support/v4/media/session/a;)V

    .line 93
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto :goto_0

    .line 98
    .end local v0    # "_arg0":Landroid/support/v4/media/session/a;
    :sswitch_4
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Landroid/support/v4/media/session/a$a;->a(Landroid/os/IBinder;)Landroid/support/v4/media/session/a;

    move-result-object v0

    .line 101
    .restart local v0    # "_arg0":Landroid/support/v4/media/session/a;
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/b$a;->b(Landroid/support/v4/media/session/a;)V

    .line 102
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 107
    .end local v0    # "_arg0":Landroid/support/v4/media/session/a;
    :sswitch_5
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 108
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->a()Z

    move-result v4

    .line 109
    .restart local v4    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 110
    if-eqz v4, :cond_4

    move v7, v8

    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 115
    .end local v4    # "_result":Z
    :sswitch_6
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 116
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->b()Ljava/lang/String;

    move-result-object v4

    .line 117
    .local v4, "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 123
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_7
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->c()Ljava/lang/String;

    move-result-object v4

    .line 125
    .restart local v4    # "_result":Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 126
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 131
    .end local v4    # "_result":Ljava/lang/String;
    :sswitch_8
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 132
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->d()Landroid/app/PendingIntent;

    move-result-object v4

    .line 133
    .local v4, "_result":Landroid/app/PendingIntent;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    if-eqz v4, :cond_5

    .line 135
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 136
    invoke-virtual {v4, p3, v8}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 139
    :cond_5
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 145
    .end local v4    # "_result":Landroid/app/PendingIntent;
    :sswitch_9
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 146
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->e()J

    move-result-wide v4

    .line 147
    .local v4, "_result":J
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    invoke-virtual {p3, v4, v5}, Landroid/os/Parcel;->writeLong(J)V

    goto/16 :goto_0

    .line 153
    .end local v4    # "_result":J
    :sswitch_a
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->f()Landroid/support/v4/media/session/o;

    move-result-object v4

    .line 155
    .local v4, "_result":Landroid/support/v4/media/session/o;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v4, :cond_6

    .line 157
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    invoke-virtual {v4, p3, v8}, Landroid/support/v4/media/session/o;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 161
    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 167
    .end local v4    # "_result":Landroid/support/v4/media/session/o;
    :sswitch_b
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 169
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 171
    .local v0, "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 173
    .local v2, "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 174
    .local v3, "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v4/media/session/b$a;->a(IILjava/lang/String;)V

    .line 175
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 180
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_c
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 184
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 186
    .restart local v2    # "_arg1":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 187
    .restart local v3    # "_arg2":Ljava/lang/String;
    invoke-virtual {p0, v0, v2, v3}, Landroid/support/v4/media/session/b$a;->b(IILjava/lang/String;)V

    .line 188
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 193
    .end local v0    # "_arg0":I
    .end local v2    # "_arg1":I
    .end local v3    # "_arg2":Ljava/lang/String;
    :sswitch_d
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->g()Landroid/support/v4/media/m;

    move-result-object v4

    .line 195
    .local v4, "_result":Landroid/support/v4/media/m;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 196
    if-eqz v4, :cond_7

    .line 197
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    invoke-virtual {v4, p3, v8}, Landroid/support/v4/media/m;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 201
    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 207
    .end local v4    # "_result":Landroid/support/v4/media/m;
    :sswitch_e
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->h()Landroid/support/v4/media/session/p;

    move-result-object v4

    .line 209
    .local v4, "_result":Landroid/support/v4/media/session/p;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v4, :cond_8

    .line 211
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 212
    invoke-virtual {v4, p3, v8}, Landroid/support/v4/media/session/p;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 215
    :cond_8
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 221
    .end local v4    # "_result":Landroid/support/v4/media/session/p;
    :sswitch_f
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 222
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->i()Ljava/util/List;

    move-result-object v6

    .line 223
    .local v6, "_result":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/g$f;>;"
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 224
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    goto/16 :goto_0

    .line 229
    .end local v6    # "_result":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/media/session/g$f;>;"
    :sswitch_10
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 230
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->j()Ljava/lang/CharSequence;

    move-result-object v4

    .line 231
    .local v4, "_result":Ljava/lang/CharSequence;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 232
    if-eqz v4, :cond_9

    .line 233
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 234
    invoke-static {v4, p3, v8}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 237
    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 243
    .end local v4    # "_result":Ljava/lang/CharSequence;
    :sswitch_11
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 244
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->k()Landroid/os/Bundle;

    move-result-object v4

    .line 245
    .local v4, "_result":Landroid/os/Bundle;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    if-eqz v4, :cond_a

    .line 247
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    invoke-virtual {v4, p3, v8}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto/16 :goto_0

    .line 251
    :cond_a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 257
    .end local v4    # "_result":Landroid/os/Bundle;
    :sswitch_12
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 258
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->l()I

    move-result v4

    .line 259
    .local v4, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 260
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 265
    .end local v4    # "_result":I
    :sswitch_13
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->m()I

    move-result v4

    .line 267
    .restart local v4    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    invoke-virtual {p3, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 273
    .end local v4    # "_result":I
    :sswitch_14
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->n()Z

    move-result v4

    .line 275
    .local v4, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    if-eqz v4, :cond_b

    move v7, v8

    :cond_b
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 281
    .end local v4    # "_result":Z
    :sswitch_15
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_c

    .line 284
    sget-object v7, Landroid/support/v4/media/j;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/j;

    .line 289
    .local v0, "_arg0":Landroid/support/v4/media/j;
    :goto_4
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/b$a;->a(Landroid/support/v4/media/j;)V

    .line 290
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 287
    .end local v0    # "_arg0":Landroid/support/v4/media/j;
    :cond_c
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/support/v4/media/j;
    goto :goto_4

    .line 295
    .end local v0    # "_arg0":Landroid/support/v4/media/j;
    :sswitch_16
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 297
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_d

    .line 298
    sget-object v7, Landroid/support/v4/media/j;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/j;

    .line 304
    .restart local v0    # "_arg0":Landroid/support/v4/media/j;
    :goto_5
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 305
    .restart local v2    # "_arg1":I
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/b$a;->a(Landroid/support/v4/media/j;I)V

    .line 306
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 301
    .end local v0    # "_arg0":Landroid/support/v4/media/j;
    .end local v2    # "_arg1":I
    :cond_d
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/support/v4/media/j;
    goto :goto_5

    .line 311
    .end local v0    # "_arg0":Landroid/support/v4/media/j;
    :sswitch_17
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 313
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_e

    .line 314
    sget-object v7, Landroid/support/v4/media/j;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/j;

    .line 319
    .restart local v0    # "_arg0":Landroid/support/v4/media/j;
    :goto_6
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/b$a;->b(Landroid/support/v4/media/j;)V

    .line 320
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 317
    .end local v0    # "_arg0":Landroid/support/v4/media/j;
    :cond_e
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/support/v4/media/j;
    goto :goto_6

    .line 325
    .end local v0    # "_arg0":Landroid/support/v4/media/j;
    :sswitch_18
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 327
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 328
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/b$a;->a(I)V

    .line 329
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 334
    .end local v0    # "_arg0":I
    :sswitch_19
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->o()V

    .line 336
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 341
    :sswitch_1a
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 343
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 345
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_f

    .line 346
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 351
    .local v2, "_arg1":Landroid/os/Bundle;
    :goto_7
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/b$a;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 352
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 349
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_f
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_7

    .line 357
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_1b
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 359
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 361
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_10

    .line 362
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 367
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_8
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/b$a;->b(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 368
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 365
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_10
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_8

    .line 373
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_1c
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 375
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_11

    .line 376
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 382
    .local v0, "_arg0":Landroid/net/Uri;
    :goto_9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_12

    .line 383
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 388
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_a
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/b$a;->a(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 389
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 379
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_11
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_9

    .line 386
    :cond_12
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_a

    .line 394
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_1d
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 395
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->p()V

    .line 396
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 401
    :sswitch_1e
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 405
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_13

    .line 406
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 411
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_b
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/b$a;->c(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 412
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 409
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_13
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_b

    .line 417
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_1f
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 419
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 421
    .restart local v0    # "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_14

    .line 422
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 427
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_c
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/b$a;->d(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 428
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 425
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_14
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_c

    .line 433
    .end local v0    # "_arg0":Ljava/lang/String;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_20
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 435
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_15

    .line 436
    sget-object v7, Landroid/net/Uri;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 442
    .local v0, "_arg0":Landroid/net/Uri;
    :goto_d
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_16

    .line 443
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 448
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_e
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/b$a;->b(Landroid/net/Uri;Landroid/os/Bundle;)V

    .line 449
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 439
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_15
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/net/Uri;
    goto :goto_d

    .line 446
    :cond_16
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_e

    .line 454
    .end local v0    # "_arg0":Landroid/net/Uri;
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :sswitch_21
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 456
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 457
    .local v0, "_arg0":J
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/b$a;->a(J)V

    .line 458
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 463
    .end local v0    # "_arg0":J
    :sswitch_22
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 464
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->q()V

    .line 465
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 470
    :sswitch_23
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 471
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->r()V

    .line 472
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 477
    :sswitch_24
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 478
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->s()V

    .line 479
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 484
    :sswitch_25
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 485
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->t()V

    .line 486
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 491
    :sswitch_26
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->u()V

    .line 493
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 498
    :sswitch_27
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 499
    invoke-virtual {p0}, Landroid/support/v4/media/session/b$a;->v()V

    .line 500
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 505
    :sswitch_28
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 507
    invoke-virtual {p2}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 508
    .restart local v0    # "_arg0":J
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/media/session/b$a;->b(J)V

    .line 509
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 514
    .end local v0    # "_arg0":J
    :sswitch_29
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 516
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_17

    .line 517
    sget-object v7, Landroid/support/v4/media/p;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/media/p;

    .line 522
    .local v0, "_arg0":Landroid/support/v4/media/p;
    :goto_f
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/b$a;->a(Landroid/support/v4/media/p;)V

    .line 523
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 520
    .end local v0    # "_arg0":Landroid/support/v4/media/p;
    :cond_17
    const/4 v0, 0x0

    .restart local v0    # "_arg0":Landroid/support/v4/media/p;
    goto :goto_f

    .line 528
    .end local v0    # "_arg0":Landroid/support/v4/media/p;
    :sswitch_2a
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 530
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 531
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/b$a;->b(I)V

    .line 532
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 537
    .end local v0    # "_arg0":I
    :sswitch_2b
    const-string v9, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 539
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_18

    move v0, v8

    .line 540
    .local v0, "_arg0":Z
    :goto_10
    invoke-virtual {p0, v0}, Landroid/support/v4/media/session/b$a;->a(Z)V

    .line 541
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .end local v0    # "_arg0":Z
    :cond_18
    move v0, v7

    .line 539
    goto :goto_10

    .line 546
    :sswitch_2c
    const-string v7, "android.support.v4.media.session.IMediaSession"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 548
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 550
    .local v0, "_arg0":Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v7

    if-eqz v7, :cond_19

    .line 551
    sget-object v7, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v7, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 556
    .restart local v2    # "_arg1":Landroid/os/Bundle;
    :goto_11
    invoke-virtual {p0, v0, v2}, Landroid/support/v4/media/session/b$a;->e(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 557
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 554
    .end local v2    # "_arg1":Landroid/os/Bundle;
    :cond_19
    const/4 v2, 0x0

    .restart local v2    # "_arg1":Landroid/os/Bundle;
    goto :goto_11

    .line 42
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_1d
        0xe -> :sswitch_1e
        0xf -> :sswitch_1f
        0x10 -> :sswitch_20
        0x11 -> :sswitch_21
        0x12 -> :sswitch_22
        0x13 -> :sswitch_23
        0x14 -> :sswitch_24
        0x15 -> :sswitch_25
        0x16 -> :sswitch_26
        0x17 -> :sswitch_27
        0x18 -> :sswitch_28
        0x19 -> :sswitch_29
        0x1a -> :sswitch_2c
        0x1b -> :sswitch_d
        0x1c -> :sswitch_e
        0x1d -> :sswitch_f
        0x1e -> :sswitch_10
        0x1f -> :sswitch_11
        0x20 -> :sswitch_12
        0x21 -> :sswitch_19
        0x22 -> :sswitch_1a
        0x23 -> :sswitch_1b
        0x24 -> :sswitch_1c
        0x25 -> :sswitch_13
        0x26 -> :sswitch_14
        0x27 -> :sswitch_2a
        0x28 -> :sswitch_2b
        0x29 -> :sswitch_15
        0x2a -> :sswitch_16
        0x2b -> :sswitch_17
        0x2c -> :sswitch_18
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
