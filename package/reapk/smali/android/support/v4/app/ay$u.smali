.class public final Landroid/support/v4/app/ay$u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v4/app/ay$g;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/app/ay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "u"
.end annotation


# static fields
.field private static final A:I = 0x4

.field private static final B:I = 0x8

.field private static final C:I = 0x10

.field private static final D:I = 0x20

.field private static final E:I = 0x40

.field private static final F:I = 0x1

.field private static final G:I = 0x800005

.field private static final H:I = 0x50

.field public static final a:I = -0x1

.field public static final b:I = 0x0

.field public static final c:I = 0x1

.field public static final d:I = 0x2

.field public static final e:I = 0x3

.field public static final f:I = 0x4

.field public static final g:I = 0x5

.field public static final h:I = 0x0

.field public static final i:I = -0x1

.field private static final j:Ljava/lang/String; = "android.wearable.EXTENSIONS"

.field private static final k:Ljava/lang/String; = "actions"

.field private static final l:Ljava/lang/String; = "flags"

.field private static final m:Ljava/lang/String; = "displayIntent"

.field private static final n:Ljava/lang/String; = "pages"

.field private static final o:Ljava/lang/String; = "background"

.field private static final p:Ljava/lang/String; = "contentIcon"

.field private static final q:Ljava/lang/String; = "contentIconGravity"

.field private static final r:Ljava/lang/String; = "contentActionIndex"

.field private static final s:Ljava/lang/String; = "customSizePreset"

.field private static final t:Ljava/lang/String; = "customContentHeight"

.field private static final u:Ljava/lang/String; = "gravity"

.field private static final v:Ljava/lang/String; = "hintScreenTimeout"

.field private static final w:Ljava/lang/String; = "dismissalId"

.field private static final x:Ljava/lang/String; = "bridgeTag"

.field private static final y:I = 0x1

.field private static final z:I = 0x2


# instance fields
.field private I:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/ay$a;",
            ">;"
        }
    .end annotation
.end field

.field private J:I

.field private K:Landroid/app/PendingIntent;

.field private L:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation
.end field

.field private M:Landroid/graphics/Bitmap;

.field private N:I

.field private O:I

.field private P:I

.field private Q:I

.field private R:I

.field private S:I

.field private T:I

.field private U:Ljava/lang/String;

.field private V:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 3072
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3053
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ay$u;->I:Ljava/util/ArrayList;

    .line 3054
    const/4 v0, 0x1

    iput v0, p0, Landroid/support/v4/app/ay$u;->J:I

    .line 3056
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/ay$u;->L:Ljava/util/ArrayList;

    .line 3059
    const v0, 0x800005

    iput v0, p0, Landroid/support/v4/app/ay$u;->O:I

    .line 3060
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/app/ay$u;->P:I

    .line 3061
    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/app/ay$u;->Q:I

    .line 3063
    const/16 v0, 0x50

    iput v0, p0, Landroid/support/v4/app/ay$u;->S:I

    .line 3073
    return-void
.end method

.method public constructor <init>(Landroid/app/Notification;)V
    .locals 11
    .param p1, "notif"    # Landroid/app/Notification;

    .prologue
    const v10, 0x800005

    const/16 v9, 0x50

    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, -0x1

    .line 3075
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3053
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/support/v4/app/ay$u;->I:Ljava/util/ArrayList;

    .line 3054
    iput v8, p0, Landroid/support/v4/app/ay$u;->J:I

    .line 3056
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/support/v4/app/ay$u;->L:Ljava/util/ArrayList;

    .line 3059
    iput v10, p0, Landroid/support/v4/app/ay$u;->O:I

    .line 3060
    iput v6, p0, Landroid/support/v4/app/ay$u;->P:I

    .line 3061
    iput v7, p0, Landroid/support/v4/app/ay$u;->Q:I

    .line 3063
    iput v9, p0, Landroid/support/v4/app/ay$u;->S:I

    .line 3076
    invoke-static {p1}, Landroid/support/v4/app/ay;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v1

    .line 3077
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_3

    const-string v4, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v3

    .line 3079
    .local v3, "wearableBundle":Landroid/os/Bundle;
    :goto_0
    if-eqz v3, :cond_2

    .line 3080
    sget-object v4, Landroid/support/v4/app/ay;->an:Landroid/support/v4/app/ay$j;

    const-string v5, "actions"

    .line 3081
    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    .line 3080
    invoke-interface {v4, v5}, Landroid/support/v4/app/ay$j;->a(Ljava/util/ArrayList;)[Landroid/support/v4/app/ay$a;

    move-result-object v0

    .line 3082
    .local v0, "actions":[Landroid/support/v4/app/ay$a;
    if-eqz v0, :cond_0

    .line 3083
    iget-object v4, p0, Landroid/support/v4/app/ay$u;->I:Ljava/util/ArrayList;

    invoke-static {v4, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3086
    :cond_0
    const-string v4, "flags"

    invoke-virtual {v3, v4, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/support/v4/app/ay$u;->J:I

    .line 3087
    const-string v4, "displayIntent"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    iput-object v4, p0, Landroid/support/v4/app/ay$u;->K:Landroid/app/PendingIntent;

    .line 3089
    const-string v4, "pages"

    invoke-static {v3, v4}, Landroid/support/v4/app/ay;->a(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;

    move-result-object v2

    .line 3091
    .local v2, "pages":[Landroid/app/Notification;
    if-eqz v2, :cond_1

    .line 3092
    iget-object v4, p0, Landroid/support/v4/app/ay$u;->L:Ljava/util/ArrayList;

    invoke-static {v4, v2}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 3095
    :cond_1
    const-string v4, "background"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/graphics/Bitmap;

    iput-object v4, p0, Landroid/support/v4/app/ay$u;->M:Landroid/graphics/Bitmap;

    .line 3096
    const-string v4, "contentIcon"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/support/v4/app/ay$u;->N:I

    .line 3097
    const-string v4, "contentIconGravity"

    invoke-virtual {v3, v4, v10}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/support/v4/app/ay$u;->O:I

    .line 3099
    const-string v4, "contentActionIndex"

    invoke-virtual {v3, v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/support/v4/app/ay$u;->P:I

    .line 3101
    const-string v4, "customSizePreset"

    invoke-virtual {v3, v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/support/v4/app/ay$u;->Q:I

    .line 3103
    const-string v4, "customContentHeight"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/support/v4/app/ay$u;->R:I

    .line 3104
    const-string v4, "gravity"

    invoke-virtual {v3, v4, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/support/v4/app/ay$u;->S:I

    .line 3105
    const-string v4, "hintScreenTimeout"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/support/v4/app/ay$u;->T:I

    .line 3106
    const-string v4, "dismissalId"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/app/ay$u;->U:Ljava/lang/String;

    .line 3107
    const-string v4, "bridgeTag"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Landroid/support/v4/app/ay$u;->V:Ljava/lang/String;

    .line 3109
    .end local v0    # "actions":[Landroid/support/v4/app/ay$a;
    .end local v2    # "pages":[Landroid/app/Notification;
    :cond_2
    return-void

    .line 3077
    .end local v3    # "wearableBundle":Landroid/os/Bundle;
    :cond_3
    const/4 v3, 0x0

    goto/16 :goto_0
.end method

.method private a(IZ)V
    .locals 2
    .param p1, "mask"    # I
    .param p2, "value"    # Z

    .prologue
    .line 3719
    if-eqz p2, :cond_0

    .line 3720
    iget v0, p0, Landroid/support/v4/app/ay$u;->J:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v4/app/ay$u;->J:I

    .line 3724
    :goto_0
    return-void

    .line 3722
    :cond_0
    iget v0, p0, Landroid/support/v4/app/ay$u;->J:I

    xor-int/lit8 v1, p1, -0x1

    and-int/2addr v0, v1

    iput v0, p0, Landroid/support/v4/app/ay$u;->J:I

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v4/app/ay$d;)Landroid/support/v4/app/ay$d;
    .locals 5
    .param p1, "builder"    # Landroid/support/v4/app/ay$d;

    .prologue
    .line 3118
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3120
    .local v0, "wearableBundle":Landroid/os/Bundle;
    iget-object v1, p0, Landroid/support/v4/app/ay$u;->I:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 3121
    const-string v2, "actions"

    sget-object v3, Landroid/support/v4/app/ay;->an:Landroid/support/v4/app/ay$j;

    iget-object v1, p0, Landroid/support/v4/app/ay$u;->I:Ljava/util/ArrayList;

    iget-object v4, p0, Landroid/support/v4/app/ay$u;->I:Ljava/util/ArrayList;

    .line 3123
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Landroid/support/v4/app/ay$a;

    .line 3122
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/support/v4/app/ay$a;

    invoke-interface {v3, v1}, Landroid/support/v4/app/ay$j;->a([Landroid/support/v4/app/ay$a;)Ljava/util/ArrayList;

    move-result-object v1

    .line 3121
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 3125
    :cond_0
    iget v1, p0, Landroid/support/v4/app/ay$u;->J:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 3126
    const-string v1, "flags"

    iget v2, p0, Landroid/support/v4/app/ay$u;->J:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3128
    :cond_1
    iget-object v1, p0, Landroid/support/v4/app/ay$u;->K:Landroid/app/PendingIntent;

    if-eqz v1, :cond_2

    .line 3129
    const-string v1, "displayIntent"

    iget-object v2, p0, Landroid/support/v4/app/ay$u;->K:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3131
    :cond_2
    iget-object v1, p0, Landroid/support/v4/app/ay$u;->L:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 3132
    const-string v2, "pages"

    iget-object v1, p0, Landroid/support/v4/app/ay$u;->L:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/ay$u;->L:Ljava/util/ArrayList;

    .line 3133
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/app/Notification;

    .line 3132
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/os/Parcelable;

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 3135
    :cond_3
    iget-object v1, p0, Landroid/support/v4/app/ay$u;->M:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_4

    .line 3136
    const-string v1, "background"

    iget-object v2, p0, Landroid/support/v4/app/ay$u;->M:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 3138
    :cond_4
    iget v1, p0, Landroid/support/v4/app/ay$u;->N:I

    if-eqz v1, :cond_5

    .line 3139
    const-string v1, "contentIcon"

    iget v2, p0, Landroid/support/v4/app/ay$u;->N:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3141
    :cond_5
    iget v1, p0, Landroid/support/v4/app/ay$u;->O:I

    const v2, 0x800005

    if-eq v1, v2, :cond_6

    .line 3142
    const-string v1, "contentIconGravity"

    iget v2, p0, Landroid/support/v4/app/ay$u;->O:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3144
    :cond_6
    iget v1, p0, Landroid/support/v4/app/ay$u;->P:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_7

    .line 3145
    const-string v1, "contentActionIndex"

    iget v2, p0, Landroid/support/v4/app/ay$u;->P:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3148
    :cond_7
    iget v1, p0, Landroid/support/v4/app/ay$u;->Q:I

    if-eqz v1, :cond_8

    .line 3149
    const-string v1, "customSizePreset"

    iget v2, p0, Landroid/support/v4/app/ay$u;->Q:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3151
    :cond_8
    iget v1, p0, Landroid/support/v4/app/ay$u;->R:I

    if-eqz v1, :cond_9

    .line 3152
    const-string v1, "customContentHeight"

    iget v2, p0, Landroid/support/v4/app/ay$u;->R:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3154
    :cond_9
    iget v1, p0, Landroid/support/v4/app/ay$u;->S:I

    const/16 v2, 0x50

    if-eq v1, v2, :cond_a

    .line 3155
    const-string v1, "gravity"

    iget v2, p0, Landroid/support/v4/app/ay$u;->S:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3157
    :cond_a
    iget v1, p0, Landroid/support/v4/app/ay$u;->T:I

    if-eqz v1, :cond_b

    .line 3158
    const-string v1, "hintScreenTimeout"

    iget v2, p0, Landroid/support/v4/app/ay$u;->T:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3160
    :cond_b
    iget-object v1, p0, Landroid/support/v4/app/ay$u;->U:Ljava/lang/String;

    if-eqz v1, :cond_c

    .line 3161
    const-string v1, "dismissalId"

    iget-object v2, p0, Landroid/support/v4/app/ay$u;->U:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3163
    :cond_c
    iget-object v1, p0, Landroid/support/v4/app/ay$u;->V:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 3164
    const-string v1, "bridgeTag"

    iget-object v2, p0, Landroid/support/v4/app/ay$u;->V:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3167
    :cond_d
    invoke-virtual {p1}, Landroid/support/v4/app/ay$d;->a()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "android.wearable.EXTENSIONS"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3168
    return-object p1
.end method

.method public a()Landroid/support/v4/app/ay$u;
    .locals 3

    .prologue
    .line 3173
    new-instance v0, Landroid/support/v4/app/ay$u;

    invoke-direct {v0}, Landroid/support/v4/app/ay$u;-><init>()V

    .line 3174
    .local v0, "that":Landroid/support/v4/app/ay$u;
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/ay$u;->I:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/app/ay$u;->I:Ljava/util/ArrayList;

    .line 3175
    iget v1, p0, Landroid/support/v4/app/ay$u;->J:I

    iput v1, v0, Landroid/support/v4/app/ay$u;->J:I

    .line 3176
    iget-object v1, p0, Landroid/support/v4/app/ay$u;->K:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/support/v4/app/ay$u;->K:Landroid/app/PendingIntent;

    .line 3177
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Landroid/support/v4/app/ay$u;->L:Ljava/util/ArrayList;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Landroid/support/v4/app/ay$u;->L:Ljava/util/ArrayList;

    .line 3178
    iget-object v1, p0, Landroid/support/v4/app/ay$u;->M:Landroid/graphics/Bitmap;

    iput-object v1, v0, Landroid/support/v4/app/ay$u;->M:Landroid/graphics/Bitmap;

    .line 3179
    iget v1, p0, Landroid/support/v4/app/ay$u;->N:I

    iput v1, v0, Landroid/support/v4/app/ay$u;->N:I

    .line 3180
    iget v1, p0, Landroid/support/v4/app/ay$u;->O:I

    iput v1, v0, Landroid/support/v4/app/ay$u;->O:I

    .line 3181
    iget v1, p0, Landroid/support/v4/app/ay$u;->P:I

    iput v1, v0, Landroid/support/v4/app/ay$u;->P:I

    .line 3182
    iget v1, p0, Landroid/support/v4/app/ay$u;->Q:I

    iput v1, v0, Landroid/support/v4/app/ay$u;->Q:I

    .line 3183
    iget v1, p0, Landroid/support/v4/app/ay$u;->R:I

    iput v1, v0, Landroid/support/v4/app/ay$u;->R:I

    .line 3184
    iget v1, p0, Landroid/support/v4/app/ay$u;->S:I

    iput v1, v0, Landroid/support/v4/app/ay$u;->S:I

    .line 3185
    iget v1, p0, Landroid/support/v4/app/ay$u;->T:I

    iput v1, v0, Landroid/support/v4/app/ay$u;->T:I

    .line 3186
    iget-object v1, p0, Landroid/support/v4/app/ay$u;->U:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v4/app/ay$u;->U:Ljava/lang/String;

    .line 3187
    iget-object v1, p0, Landroid/support/v4/app/ay$u;->V:Ljava/lang/String;

    iput-object v1, v0, Landroid/support/v4/app/ay$u;->V:Ljava/lang/String;

    .line 3188
    return-object v0
.end method

.method public a(I)Landroid/support/v4/app/ay$u;
    .locals 0
    .param p1, "icon"    # I

    .prologue
    .line 3366
    iput p1, p0, Landroid/support/v4/app/ay$u;->N:I

    .line 3367
    return-object p0
.end method

.method public a(Landroid/app/Notification;)Landroid/support/v4/app/ay$u;
    .locals 1
    .param p1, "page"    # Landroid/app/Notification;

    .prologue
    .line 3296
    iget-object v0, p0, Landroid/support/v4/app/ay$u;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3297
    return-object p0
.end method

.method public a(Landroid/app/PendingIntent;)Landroid/support/v4/app/ay$u;
    .locals 0
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 3273
    iput-object p1, p0, Landroid/support/v4/app/ay$u;->K:Landroid/app/PendingIntent;

    .line 3274
    return-object p0
.end method

.method public a(Landroid/graphics/Bitmap;)Landroid/support/v4/app/ay$u;
    .locals 0
    .param p1, "background"    # Landroid/graphics/Bitmap;

    .prologue
    .line 3346
    iput-object p1, p0, Landroid/support/v4/app/ay$u;->M:Landroid/graphics/Bitmap;

    .line 3347
    return-object p0
.end method

.method public a(Landroid/support/v4/app/ay$a;)Landroid/support/v4/app/ay$u;
    .locals 1
    .param p1, "action"    # Landroid/support/v4/app/ay$a;

    .prologue
    .line 3204
    iget-object v0, p0, Landroid/support/v4/app/ay$u;->I:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3205
    return-object p0
.end method

.method public a(Ljava/lang/String;)Landroid/support/v4/app/ay$u;
    .locals 0
    .param p1, "dismissalId"    # Ljava/lang/String;

    .prologue
    .line 3685
    iput-object p1, p0, Landroid/support/v4/app/ay$u;->U:Ljava/lang/String;

    .line 3686
    return-object p0
.end method

.method public a(Ljava/util/List;)Landroid/support/v4/app/ay$u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/ay$a;",
            ">;)",
            "Landroid/support/v4/app/ay$u;"
        }
    .end annotation

    .prologue
    .line 3221
    .local p1, "actions":Ljava/util/List;, "Ljava/util/List<Landroid/support/v4/app/ay$a;>;"
    iget-object v0, p0, Landroid/support/v4/app/ay$u;->I:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3222
    return-object p0
.end method

.method public a(Z)Landroid/support/v4/app/ay$u;
    .locals 1
    .param p1, "startScrollBottom"    # Z

    .prologue
    .line 3510
    const/16 v0, 0x8

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ay$u;->a(IZ)V

    .line 3511
    return-object p0
.end method

.method public b()Landroid/support/v4/app/ay$u;
    .locals 1

    .prologue
    .line 3231
    iget-object v0, p0, Landroid/support/v4/app/ay$u;->I:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3232
    return-object p0
.end method

.method public b(I)Landroid/support/v4/app/ay$u;
    .locals 0
    .param p1, "contentIconGravity"    # I

    .prologue
    .line 3384
    iput p1, p0, Landroid/support/v4/app/ay$u;->O:I

    .line 3385
    return-object p0
.end method

.method public b(Ljava/lang/String;)Landroid/support/v4/app/ay$u;
    .locals 0
    .param p1, "bridgeTag"    # Ljava/lang/String;

    .prologue
    .line 3706
    iput-object p1, p0, Landroid/support/v4/app/ay$u;->V:Ljava/lang/String;

    .line 3707
    return-object p0
.end method

.method public b(Ljava/util/List;)Landroid/support/v4/app/ay$u;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification;",
            ">;)",
            "Landroid/support/v4/app/ay$u;"
        }
    .end annotation

    .prologue
    .line 3311
    .local p1, "pages":Ljava/util/List;, "Ljava/util/List<Landroid/app/Notification;>;"
    iget-object v0, p0, Landroid/support/v4/app/ay$u;->L:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 3312
    return-object p0
.end method

.method public b(Z)Landroid/support/v4/app/ay$u;
    .locals 1
    .param p1, "contentIntentAvailableOffline"    # Z

    .prologue
    .line 3531
    const/4 v0, 0x1

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ay$u;->a(IZ)V

    .line 3532
    return-object p0
.end method

.method public c(I)Landroid/support/v4/app/ay$u;
    .locals 0
    .param p1, "actionIndex"    # I

    .prologue
    .line 3413
    iput p1, p0, Landroid/support/v4/app/ay$u;->P:I

    .line 3414
    return-object p0
.end method

.method public c(Z)Landroid/support/v4/app/ay$u;
    .locals 1
    .param p1, "hintHideIcon"    # Z

    .prologue
    .line 3551
    const/4 v0, 0x2

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ay$u;->a(IZ)V

    .line 3552
    return-object p0
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/ay$a;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3239
    iget-object v0, p0, Landroid/support/v4/app/ay$u;->I:Ljava/util/ArrayList;

    return-object v0
.end method

.method public synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 2951
    invoke-virtual {p0}, Landroid/support/v4/app/ay$u;->a()Landroid/support/v4/app/ay$u;

    move-result-object v0

    return-object v0
.end method

.method public d()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 3282
    iget-object v0, p0, Landroid/support/v4/app/ay$u;->K:Landroid/app/PendingIntent;

    return-object v0
.end method

.method public d(I)Landroid/support/v4/app/ay$u;
    .locals 0
    .param p1, "gravity"    # I

    .prologue
    .line 3442
    iput p1, p0, Landroid/support/v4/app/ay$u;->S:I

    .line 3443
    return-object p0
.end method

.method public d(Z)Landroid/support/v4/app/ay$u;
    .locals 1
    .param p1, "hintShowBackgroundOnly"    # Z

    .prologue
    .line 3570
    const/4 v0, 0x4

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ay$u;->a(IZ)V

    .line 3571
    return-object p0
.end method

.method public e()Landroid/support/v4/app/ay$u;
    .locals 1

    .prologue
    .line 3321
    iget-object v0, p0, Landroid/support/v4/app/ay$u;->L:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 3322
    return-object p0
.end method

.method public e(I)Landroid/support/v4/app/ay$u;
    .locals 0
    .param p1, "sizePreset"    # I

    .prologue
    .line 3466
    iput p1, p0, Landroid/support/v4/app/ay$u;->Q:I

    .line 3467
    return-object p0
.end method

.method public e(Z)Landroid/support/v4/app/ay$u;
    .locals 1
    .param p1, "hintAvoidBackgroundClipping"    # Z

    .prologue
    .line 3592
    const/16 v0, 0x10

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ay$u;->a(IZ)V

    .line 3593
    return-object p0
.end method

.method public f(I)Landroid/support/v4/app/ay$u;
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 3490
    iput p1, p0, Landroid/support/v4/app/ay$u;->R:I

    .line 3491
    return-object p0
.end method

.method public f(Z)Landroid/support/v4/app/ay$u;
    .locals 1
    .param p1, "hintAmbientBigPicture"    # Z

    .prologue
    .line 3637
    const/16 v0, 0x20

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ay$u;->a(IZ)V

    .line 3638
    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/Notification;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3333
    iget-object v0, p0, Landroid/support/v4/app/ay$u;->L:Ljava/util/ArrayList;

    return-object v0
.end method

.method public g()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 3359
    iget-object v0, p0, Landroid/support/v4/app/ay$u;->M:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public g(I)Landroid/support/v4/app/ay$u;
    .locals 0
    .param p1, "timeout"    # I

    .prologue
    .line 3615
    iput p1, p0, Landroid/support/v4/app/ay$u;->T:I

    .line 3616
    return-object p0
.end method

.method public g(Z)Landroid/support/v4/app/ay$u;
    .locals 1
    .param p1, "hintContentIntentLaunchesActivity"    # Z

    .prologue
    .line 3661
    const/16 v0, 0x40

    invoke-direct {p0, v0, p1}, Landroid/support/v4/app/ay$u;->a(IZ)V

    .line 3662
    return-object p0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 3374
    iget v0, p0, Landroid/support/v4/app/ay$u;->N:I

    return v0
.end method

.method public i()I
    .locals 1

    .prologue
    .line 3395
    iget v0, p0, Landroid/support/v4/app/ay$u;->O:I

    return v0
.end method

.method public j()I
    .locals 1

    .prologue
    .line 3432
    iget v0, p0, Landroid/support/v4/app/ay$u;->P:I

    return v0
.end method

.method public k()I
    .locals 1

    .prologue
    .line 3453
    iget v0, p0, Landroid/support/v4/app/ay$u;->S:I

    return v0
.end method

.method public l()I
    .locals 1

    .prologue
    .line 3479
    iget v0, p0, Landroid/support/v4/app/ay$u;->Q:I

    return v0
.end method

.method public m()I
    .locals 1

    .prologue
    .line 3501
    iget v0, p0, Landroid/support/v4/app/ay$u;->R:I

    return v0
.end method

.method public n()Z
    .locals 1

    .prologue
    .line 3520
    iget v0, p0, Landroid/support/v4/app/ay$u;->J:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public o()Z
    .locals 1

    .prologue
    .line 3542
    iget v0, p0, Landroid/support/v4/app/ay$u;->J:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public p()Z
    .locals 1

    .prologue
    .line 3561
    iget v0, p0, Landroid/support/v4/app/ay$u;->J:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public q()Z
    .locals 1

    .prologue
    .line 3580
    iget v0, p0, Landroid/support/v4/app/ay$u;->J:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public r()Z
    .locals 1

    .prologue
    .line 3604
    iget v0, p0, Landroid/support/v4/app/ay$u;->J:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public s()I
    .locals 1

    .prologue
    .line 3626
    iget v0, p0, Landroid/support/v4/app/ay$u;->T:I

    return v0
.end method

.method public t()Z
    .locals 1

    .prologue
    .line 3649
    iget v0, p0, Landroid/support/v4/app/ay$u;->J:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public u()Z
    .locals 1

    .prologue
    .line 3672
    iget v0, p0, Landroid/support/v4/app/ay$u;->J:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3694
    iget-object v0, p0, Landroid/support/v4/app/ay$u;->U:Ljava/lang/String;

    return-object v0
.end method

.method public w()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3715
    iget-object v0, p0, Landroid/support/v4/app/ay$u;->V:Ljava/lang/String;

    return-object v0
.end method
