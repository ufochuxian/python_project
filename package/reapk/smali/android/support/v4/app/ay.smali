.class public Landroid/support/v4/app/ay;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ay$f;,
        Landroid/support/v4/app/ay$u;,
        Landroid/support/v4/app/ay$g;,
        Landroid/support/v4/app/ay$a;,
        Landroid/support/v4/app/ay$h;,
        Landroid/support/v4/app/ay$i;,
        Landroid/support/v4/app/ay$c;,
        Landroid/support/v4/app/ay$b;,
        Landroid/support/v4/app/ay$t;,
        Landroid/support/v4/app/ay$d;,
        Landroid/support/v4/app/ay$m;,
        Landroid/support/v4/app/ay$l;,
        Landroid/support/v4/app/ay$k;,
        Landroid/support/v4/app/ay$r;,
        Landroid/support/v4/app/ay$q;,
        Landroid/support/v4/app/ay$p;,
        Landroid/support/v4/app/ay$o;,
        Landroid/support/v4/app/ay$n;,
        Landroid/support/v4/app/ay$e;,
        Landroid/support/v4/app/ay$j;,
        Landroid/support/v4/app/ay$s;
    }
.end annotation


# static fields
.field public static final A:Ljava/lang/String; = "android.summaryText"

.field public static final B:Ljava/lang/String; = "android.bigText"

.field public static final C:Ljava/lang/String; = "android.icon"

.field public static final D:Ljava/lang/String; = "android.largeIcon"

.field public static final E:Ljava/lang/String; = "android.largeIcon.big"

.field public static final F:Ljava/lang/String; = "android.progress"

.field public static final G:Ljava/lang/String; = "android.progressMax"

.field public static final H:Ljava/lang/String; = "android.progressIndeterminate"

.field public static final I:Ljava/lang/String; = "android.showChronometer"

.field public static final J:Ljava/lang/String; = "android.showWhen"

.field public static final K:Ljava/lang/String; = "android.picture"

.field public static final L:Ljava/lang/String; = "android.textLines"

.field public static final M:Ljava/lang/String; = "android.template"

.field public static final N:Ljava/lang/String; = "android.people"

.field public static final O:Ljava/lang/String; = "android.backgroundImageUri"

.field public static final P:Ljava/lang/String; = "android.mediaSession"

.field public static final Q:Ljava/lang/String; = "android.compactActions"

.field public static final R:Ljava/lang/String; = "android.selfDisplayName"

.field public static final S:Ljava/lang/String; = "android.conversationTitle"

.field public static final T:Ljava/lang/String; = "android.messages"

.field public static final U:I = 0x0
    .annotation build Landroid/support/annotation/k;
    .end annotation
.end field

.field public static final V:I = 0x1

.field public static final W:I = 0x0

.field public static final X:I = -0x1

.field public static final Y:Ljava/lang/String; = "call"

.field public static final Z:Ljava/lang/String; = "msg"

.field public static final a:I = -0x1

.field public static final aa:Ljava/lang/String; = "email"

.field public static final ab:Ljava/lang/String; = "event"

.field public static final ac:Ljava/lang/String; = "promo"

.field public static final ad:Ljava/lang/String; = "alarm"

.field public static final ae:Ljava/lang/String; = "progress"

.field public static final af:Ljava/lang/String; = "social"

.field public static final ag:Ljava/lang/String; = "err"

.field public static final ah:Ljava/lang/String; = "transport"

.field public static final ai:Ljava/lang/String; = "sys"

.field public static final aj:Ljava/lang/String; = "service"

.field public static final ak:Ljava/lang/String; = "reminder"

.field public static final al:Ljava/lang/String; = "recommendation"

.field public static final am:Ljava/lang/String; = "status"

.field static final an:Landroid/support/v4/app/ay$j;

.field public static final b:I = 0x1

.field public static final c:I = 0x2

.field public static final d:I = 0x4

.field public static final e:I = -0x1

.field public static final f:I = 0x1

.field public static final g:I = 0x2

.field public static final h:I = 0x4

.field public static final i:I = 0x8

.field public static final j:I = 0x10

.field public static final k:I = 0x20

.field public static final l:I = 0x40

.field public static final m:I = 0x80
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final n:I = 0x100

.field public static final o:I = 0x200

.field public static final p:I = 0x0

.field public static final q:I = -0x1

.field public static final r:I = -0x2

.field public static final s:I = 0x1

.field public static final t:I = 0x2

.field public static final u:Ljava/lang/String; = "android.title"

.field public static final v:Ljava/lang/String; = "android.title.big"

.field public static final w:Ljava/lang/String; = "android.text"

.field public static final x:Ljava/lang/String; = "android.subText"

.field public static final y:Ljava/lang/String; = "android.remoteInputHistory"

.field public static final z:Ljava/lang/String; = "android.infoText"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 948
    invoke-static {}, Landroid/support/v4/os/c;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 949
    new-instance v0, Landroid/support/v4/app/ay$m;

    invoke-direct {v0}, Landroid/support/v4/app/ay$m;-><init>()V

    sput-object v0, Landroid/support/v4/app/ay;->an:Landroid/support/v4/app/ay$j;

    .line 965
    :goto_0
    return-void

    .line 950
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 951
    new-instance v0, Landroid/support/v4/app/ay$l;

    invoke-direct {v0}, Landroid/support/v4/app/ay$l;-><init>()V

    sput-object v0, Landroid/support/v4/app/ay;->an:Landroid/support/v4/app/ay$j;

    goto :goto_0

    .line 952
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x14

    if-lt v0, v1, :cond_2

    .line 953
    new-instance v0, Landroid/support/v4/app/ay$k;

    invoke-direct {v0}, Landroid/support/v4/app/ay$k;-><init>()V

    sput-object v0, Landroid/support/v4/app/ay;->an:Landroid/support/v4/app/ay$j;

    goto :goto_0

    .line 954
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_3

    .line 955
    new-instance v0, Landroid/support/v4/app/ay$r;

    invoke-direct {v0}, Landroid/support/v4/app/ay$r;-><init>()V

    sput-object v0, Landroid/support/v4/app/ay;->an:Landroid/support/v4/app/ay$j;

    goto :goto_0

    .line 956
    :cond_3
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_4

    .line 957
    new-instance v0, Landroid/support/v4/app/ay$q;

    invoke-direct {v0}, Landroid/support/v4/app/ay$q;-><init>()V

    sput-object v0, Landroid/support/v4/app/ay;->an:Landroid/support/v4/app/ay$j;

    goto :goto_0

    .line 958
    :cond_4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_5

    .line 959
    new-instance v0, Landroid/support/v4/app/ay$p;

    invoke-direct {v0}, Landroid/support/v4/app/ay$p;-><init>()V

    sput-object v0, Landroid/support/v4/app/ay;->an:Landroid/support/v4/app/ay$j;

    goto :goto_0

    .line 960
    :cond_5
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_6

    .line 961
    new-instance v0, Landroid/support/v4/app/ay$o;

    invoke-direct {v0}, Landroid/support/v4/app/ay$o;-><init>()V

    sput-object v0, Landroid/support/v4/app/ay;->an:Landroid/support/v4/app/ay$j;

    goto :goto_0

    .line 963
    :cond_6
    new-instance v0, Landroid/support/v4/app/ay$n;

    invoke-direct {v0}, Landroid/support/v4/app/ay$n;-><init>()V

    sput-object v0, Landroid/support/v4/app/ay;->an:Landroid/support/v4/app/ay$j;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3756
    return-void
.end method

.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 1
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 4105
    sget-object v0, Landroid/support/v4/app/ay;->an:Landroid/support/v4/app/ay$j;

    invoke-interface {v0, p0}, Landroid/support/v4/app/ay$j;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Notification;I)Landroid/support/v4/app/ay$a;
    .locals 1
    .param p0, "notif"    # Landroid/app/Notification;
    .param p1, "actionIndex"    # I

    .prologue
    .line 4123
    sget-object v0, Landroid/support/v4/app/ay;->an:Landroid/support/v4/app/ay$j;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/app/ay$j;->a(Landroid/app/Notification;I)Landroid/support/v4/app/ay$a;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/support/v4/app/aw;Ljava/util/ArrayList;)V
    .locals 3
    .param p0, "builder"    # Landroid/support/v4/app/aw;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/aw;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/v4/app/ay$a;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 885
    .local p1, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/support/v4/app/ay$a;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/ay$a;

    .line 886
    .local v0, "action":Landroid/support/v4/app/ay$a;
    invoke-interface {p0, v0}, Landroid/support/v4/app/aw;->a(Landroid/support/v4/app/bd$a;)V

    goto :goto_0

    .line 888
    .end local v0    # "action":Landroid/support/v4/app/ay$a;
    :cond_0
    return-void
.end method

.method static a(Landroid/support/v4/app/ax;Landroid/support/v4/app/ay$t;)V
    .locals 10
    .param p0, "builder"    # Landroid/support/v4/app/ax;
    .param p1, "style"    # Landroid/support/v4/app/ay$t;

    .prologue
    .line 892
    if-eqz p1, :cond_0

    .line 893
    instance-of v0, p1, Landroid/support/v4/app/ay$c;

    if-eqz v0, :cond_1

    move-object v8, p1

    .line 894
    check-cast v8, Landroid/support/v4/app/ay$c;

    .line 895
    .local v8, "bigTextStyle":Landroid/support/v4/app/ay$c;
    iget-object v0, v8, Landroid/support/v4/app/ay$c;->f:Ljava/lang/CharSequence;

    iget-boolean v1, v8, Landroid/support/v4/app/ay$c;->h:Z

    iget-object v2, v8, Landroid/support/v4/app/ay$c;->g:Ljava/lang/CharSequence;

    iget-object v3, v8, Landroid/support/v4/app/ay$c;->a:Ljava/lang/CharSequence;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/bh;->a(Landroid/support/v4/app/ax;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 918
    .end local v8    # "bigTextStyle":Landroid/support/v4/app/ay$c;
    :cond_0
    :goto_0
    return-void

    .line 900
    :cond_1
    instance-of v0, p1, Landroid/support/v4/app/ay$h;

    if-eqz v0, :cond_2

    move-object v9, p1

    .line 901
    check-cast v9, Landroid/support/v4/app/ay$h;

    .line 902
    .local v9, "inboxStyle":Landroid/support/v4/app/ay$h;
    iget-object v0, v9, Landroid/support/v4/app/ay$h;->f:Ljava/lang/CharSequence;

    iget-boolean v1, v9, Landroid/support/v4/app/ay$h;->h:Z

    iget-object v2, v9, Landroid/support/v4/app/ay$h;->g:Ljava/lang/CharSequence;

    iget-object v3, v9, Landroid/support/v4/app/ay$h;->a:Ljava/util/ArrayList;

    invoke-static {p0, v0, v1, v2, v3}, Landroid/support/v4/app/bh;->a(Landroid/support/v4/app/ax;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 907
    .end local v9    # "inboxStyle":Landroid/support/v4/app/ay$h;
    :cond_2
    instance-of v0, p1, Landroid/support/v4/app/ay$b;

    if-eqz v0, :cond_0

    move-object v7, p1

    .line 908
    check-cast v7, Landroid/support/v4/app/ay$b;

    .line 909
    .local v7, "bigPictureStyle":Landroid/support/v4/app/ay$b;
    iget-object v1, v7, Landroid/support/v4/app/ay$b;->f:Ljava/lang/CharSequence;

    iget-boolean v2, v7, Landroid/support/v4/app/ay$b;->h:Z

    iget-object v3, v7, Landroid/support/v4/app/ay$b;->g:Ljava/lang/CharSequence;

    iget-object v4, v7, Landroid/support/v4/app/ay$b;->a:Landroid/graphics/Bitmap;

    iget-object v5, v7, Landroid/support/v4/app/ay$b;->b:Landroid/graphics/Bitmap;

    iget-boolean v6, v7, Landroid/support/v4/app/ay$b;->c:Z

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/support/v4/app/bh;->a(Landroid/support/v4/app/ax;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V

    goto :goto_0
.end method

.method static a(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/app/Notification;
    .locals 4
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 4087
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v0

    .line 4088
    .local v0, "array":[Landroid/os/Parcelable;
    instance-of v3, v0, [Landroid/app/Notification;

    if-nez v3, :cond_0

    if-nez v0, :cond_1

    .line 4089
    :cond_0
    check-cast v0, [Landroid/app/Notification;

    .end local v0    # "array":[Landroid/os/Parcelable;
    check-cast v0, [Landroid/app/Notification;

    move-object v2, v0

    .line 4096
    :goto_0
    return-object v2

    .line 4091
    .restart local v0    # "array":[Landroid/os/Parcelable;
    :cond_1
    array-length v3, v0

    new-array v2, v3, [Landroid/app/Notification;

    .line 4092
    .local v2, "typedArray":[Landroid/app/Notification;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 4093
    aget-object v3, v0, v1

    check-cast v3, Landroid/app/Notification;

    aput-object v3, v2, v1

    .line 4092
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 4095
    :cond_2
    invoke-virtual {p0, p1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    goto :goto_0
.end method

.method public static b(Landroid/app/Notification;)I
    .locals 1
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 4113
    sget-object v0, Landroid/support/v4/app/ay;->an:Landroid/support/v4/app/ay$j;

    invoke-interface {v0, p0}, Landroid/support/v4/app/ay$j;->b(Landroid/app/Notification;)I

    move-result v0

    return v0
.end method

.method static b(Landroid/support/v4/app/ax;Landroid/support/v4/app/ay$t;)V
    .locals 12
    .param p0, "builder"    # Landroid/support/v4/app/ax;
    .param p1, "style"    # Landroid/support/v4/app/ay$t;

    .prologue
    .line 922
    if-eqz p1, :cond_1

    .line 923
    instance-of v0, p1, Landroid/support/v4/app/ay$i;

    if-eqz v0, :cond_2

    move-object v9, p1

    .line 924
    check-cast v9, Landroid/support/v4/app/ay$i;

    .line 925
    .local v9, "messagingStyle":Landroid/support/v4/app/ay$i;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 926
    .local v3, "texts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 927
    .local v4, "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 928
    .local v5, "senders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 929
    .local v6, "dataMimeTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 931
    .local v7, "dataUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    iget-object v0, v9, Landroid/support/v4/app/ay$i;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/ay$i$a;

    .line 932
    .local v8, "message":Landroid/support/v4/app/ay$i$a;
    invoke-virtual {v8}, Landroid/support/v4/app/ay$i$a;->a()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 933
    invoke-virtual {v8}, Landroid/support/v4/app/ay$i$a;->b()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 934
    invoke-virtual {v8}, Landroid/support/v4/app/ay$i$a;->c()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 935
    invoke-virtual {v8}, Landroid/support/v4/app/ay$i$a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 936
    invoke-virtual {v8}, Landroid/support/v4/app/ay$i$a;->e()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 938
    .end local v8    # "message":Landroid/support/v4/app/ay$i$a;
    :cond_0
    iget-object v1, v9, Landroid/support/v4/app/ay$i;->b:Ljava/lang/CharSequence;

    iget-object v2, v9, Landroid/support/v4/app/ay$i;->c:Ljava/lang/CharSequence;

    move-object v0, p0

    invoke-static/range {v0 .. v7}, Landroid/support/v4/app/bc;->a(Landroid/support/v4/app/ax;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 945
    .end local v3    # "texts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v4    # "timestamps":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    .end local v5    # "senders":Ljava/util/List;, "Ljava/util/List<Ljava/lang/CharSequence;>;"
    .end local v6    # "dataMimeTypes":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "dataUris":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    .end local v9    # "messagingStyle":Landroid/support/v4/app/ay$i;
    :cond_1
    :goto_1
    return-void

    .line 942
    :cond_2
    invoke-static {p0, p1}, Landroid/support/v4/app/ay;->a(Landroid/support/v4/app/ax;Landroid/support/v4/app/ay$t;)V

    goto :goto_1
.end method

.method public static c(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 4132
    sget-object v0, Landroid/support/v4/app/ay;->an:Landroid/support/v4/app/ay$j;

    invoke-interface {v0, p0}, Landroid/support/v4/app/ay$j;->c(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static d(Landroid/app/Notification;)Z
    .locals 1
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 4142
    sget-object v0, Landroid/support/v4/app/ay;->an:Landroid/support/v4/app/ay$j;

    invoke-interface {v0, p0}, Landroid/support/v4/app/ay$j;->d(Landroid/app/Notification;)Z

    move-result v0

    return v0
.end method

.method public static e(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 4150
    sget-object v0, Landroid/support/v4/app/ay;->an:Landroid/support/v4/app/ay$j;

    invoke-interface {v0, p0}, Landroid/support/v4/app/ay$j;->e(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static f(Landroid/app/Notification;)Z
    .locals 1
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 4160
    sget-object v0, Landroid/support/v4/app/ay;->an:Landroid/support/v4/app/ay$j;

    invoke-interface {v0, p0}, Landroid/support/v4/app/ay$j;->f(Landroid/app/Notification;)Z

    move-result v0

    return v0
.end method

.method public static g(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 4176
    sget-object v0, Landroid/support/v4/app/ay;->an:Landroid/support/v4/app/ay$j;

    invoke-interface {v0, p0}, Landroid/support/v4/app/ay$j;->g(Landroid/app/Notification;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
