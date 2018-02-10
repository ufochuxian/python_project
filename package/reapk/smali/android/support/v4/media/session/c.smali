.class public final Landroid/support/v4/media/session/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/media/session/c$l;,
        Landroid/support/v4/media/session/c$f;,
        Landroid/support/v4/media/session/c$k;,
        Landroid/support/v4/media/session/c$e;,
        Landroid/support/v4/media/session/c$j;,
        Landroid/support/v4/media/session/c$d;,
        Landroid/support/v4/media/session/c$m;,
        Landroid/support/v4/media/session/c$g;,
        Landroid/support/v4/media/session/c$c;,
        Landroid/support/v4/media/session/c$h;,
        Landroid/support/v4/media/session/c$i;,
        Landroid/support/v4/media/session/c$a;,
        Landroid/support/v4/media/session/c$b;
    }
.end annotation


# static fields
.field static final a:Ljava/lang/String; = "MediaControllerCompat"

.field static final b:Ljava/lang/String; = "android.support.v4.media.session.command.GET_EXTRA_BINDER"

.field static final c:Ljava/lang/String; = "android.support.v4.media.session.command.ADD_QUEUE_ITEM"

.field static final d:Ljava/lang/String; = "android.support.v4.media.session.command.ADD_QUEUE_ITEM_AT"

.field static final e:Ljava/lang/String; = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM"

.field static final f:Ljava/lang/String; = "android.support.v4.media.session.command.REMOVE_QUEUE_ITEM_AT"

.field static final g:Ljava/lang/String; = "android.support.v4.media.session.command.ARGUMENT_MEDIA_DESCRIPTION"

.field static final h:Ljava/lang/String; = "android.support.v4.media.session.command.ARGUMENT_INDEX"


# instance fields
.field private final i:Landroid/support/v4/media/session/c$c;

.field private final j:Landroid/support/v4/media/session/g$i;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/g$i;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "sessionToken"    # Landroid/support/v4/media/session/g$i;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 187
    if-nez p2, :cond_0

    .line 188
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "sessionToken must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 190
    :cond_0
    iput-object p2, p0, Landroid/support/v4/media/session/c;->j:Landroid/support/v4/media/session/g$i;

    .line 192
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 193
    new-instance v0, Landroid/support/v4/media/session/c$f;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/media/session/c$f;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/g$i;)V

    iput-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    .line 201
    :goto_0
    return-void

    .line 194
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 195
    new-instance v0, Landroid/support/v4/media/session/c$e;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/media/session/c$e;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/g$i;)V

    iput-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    goto :goto_0

    .line 196
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 197
    new-instance v0, Landroid/support/v4/media/session/c$d;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/media/session/c$d;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/g$i;)V

    iput-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    goto :goto_0

    .line 199
    :cond_3
    new-instance v0, Landroid/support/v4/media/session/c$g;

    iget-object v1, p0, Landroid/support/v4/media/session/c;->j:Landroid/support/v4/media/session/g$i;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/c$g;-><init>(Landroid/support/v4/media/session/g$i;)V

    iput-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/media/session/g;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "session"    # Landroid/support/v4/media/session/g;

    .prologue
    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    if-nez p2, :cond_0

    .line 163
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "session must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 165
    :cond_0
    invoke-virtual {p2}, Landroid/support/v4/media/session/g;->c()Landroid/support/v4/media/session/g$i;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/media/session/c;->j:Landroid/support/v4/media/session/g$i;

    .line 167
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_1

    .line 168
    new-instance v0, Landroid/support/v4/media/session/c$f;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/media/session/c$f;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/g;)V

    iput-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    .line 176
    :goto_0
    return-void

    .line 169
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_2

    .line 170
    new-instance v0, Landroid/support/v4/media/session/c$e;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/media/session/c$e;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/g;)V

    iput-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    goto :goto_0

    .line 171
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 172
    new-instance v0, Landroid/support/v4/media/session/c$d;

    invoke-direct {v0, p1, p2}, Landroid/support/v4/media/session/c$d;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/g;)V

    iput-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    goto :goto_0

    .line 174
    :cond_3
    new-instance v0, Landroid/support/v4/media/session/c$g;

    iget-object v1, p0, Landroid/support/v4/media/session/c;->j:Landroid/support/v4/media/session/g$i;

    invoke-direct {v0, v1}, Landroid/support/v4/media/session/c$g;-><init>(Landroid/support/v4/media/session/g$i;)V

    iput-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Landroid/support/v4/media/session/c;
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 133
    instance-of v5, p0, Landroid/support/v4/app/SupportActivity;

    if-eqz v5, :cond_1

    .line 134
    check-cast p0, Landroid/support/v4/app/SupportActivity;

    .end local p0    # "activity":Landroid/app/Activity;
    const-class v5, Landroid/support/v4/media/session/c$b;

    .line 135
    invoke-virtual {p0, v5}, Landroid/support/v4/app/SupportActivity;->getExtraData(Ljava/lang/Class;)Landroid/support/v4/app/SupportActivity$a;

    move-result-object v2

    check-cast v2, Landroid/support/v4/media/session/c$b;

    .line 136
    .local v2, "extraData":Landroid/support/v4/media/session/c$b;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/support/v4/media/session/c$b;->a()Landroid/support/v4/media/session/c;

    move-result-object v4

    .line 150
    .end local v2    # "extraData":Landroid/support/v4/media/session/c$b;
    .local v0, "controllerObj":Ljava/lang/Object;
    .restart local p0    # "activity":Landroid/app/Activity;
    :cond_0
    :goto_0
    return-object v4

    .line 137
    .end local v0    # "controllerObj":Ljava/lang/Object;
    :cond_1
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x15

    if-lt v5, v6, :cond_0

    .line 138
    invoke-static {p0}, Landroid/support/v4/media/session/d;->a(Landroid/app/Activity;)Ljava/lang/Object;

    move-result-object v0

    .line 139
    .restart local v0    # "controllerObj":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 142
    invoke-static {v0}, Landroid/support/v4/media/session/d;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 144
    .local v3, "sessionTokenObj":Ljava/lang/Object;
    :try_start_0
    new-instance v5, Landroid/support/v4/media/session/c;

    .line 145
    invoke-static {v3}, Landroid/support/v4/media/session/g$i;->a(Ljava/lang/Object;)Landroid/support/v4/media/session/g$i;

    move-result-object v6

    invoke-direct {v5, p0, v6}, Landroid/support/v4/media/session/c;-><init>(Landroid/content/Context;Landroid/support/v4/media/session/g$i;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v5

    goto :goto_0

    .line 146
    :catch_0
    move-exception v1

    .line 147
    .local v1, "e":Landroid/os/RemoteException;
    const-string v5, "MediaControllerCompat"

    const-string v6, "Dead object in getMediaController."

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/media/session/c;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "mediaController"    # Landroid/support/v4/media/session/c;

    .prologue
    .line 111
    instance-of v2, p0, Landroid/support/v4/app/SupportActivity;

    if-eqz v2, :cond_0

    move-object v2, p0

    .line 112
    check-cast v2, Landroid/support/v4/app/SupportActivity;

    new-instance v3, Landroid/support/v4/media/session/c$b;

    invoke-direct {v3, p1}, Landroid/support/v4/media/session/c$b;-><init>(Landroid/support/v4/media/session/c;)V

    invoke-virtual {v2, v3}, Landroid/support/v4/app/SupportActivity;->putExtraData(Landroid/support/v4/app/SupportActivity$a;)V

    .line 115
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 116
    const/4 v0, 0x0

    .line 117
    .local v0, "controllerObj":Ljava/lang/Object;
    if-eqz p1, :cond_1

    .line 118
    invoke-virtual {p1}, Landroid/support/v4/media/session/c;->m()Landroid/support/v4/media/session/g$i;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/media/session/g$i;->a()Ljava/lang/Object;

    move-result-object v1

    .line 119
    .local v1, "sessionTokenObj":Ljava/lang/Object;
    invoke-static {p0, v1}, Landroid/support/v4/media/session/d;->a(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 121
    .end local v0    # "controllerObj":Ljava/lang/Object;
    .end local v1    # "sessionTokenObj":Ljava/lang/Object;
    :cond_1
    invoke-static {p0, v0}, Landroid/support/v4/media/session/d;->a(Landroid/app/Activity;Ljava/lang/Object;)V

    .line 123
    :cond_2
    return-void
.end method


# virtual methods
.method public a()Landroid/support/v4/media/session/c$i;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0}, Landroid/support/v4/media/session/c$c;->a()Landroid/support/v4/media/session/c$i;

    move-result-object v0

    return-object v0
.end method

.method public a(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 319
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/c$c;->a(I)V

    .line 320
    return-void
.end method

.method public a(II)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "flags"    # I

    .prologue
    .line 423
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/c$c;->a(II)V

    .line 424
    return-void
.end method

.method public a(Landroid/support/v4/media/j;)V
    .locals 1
    .param p1, "description"    # Landroid/support/v4/media/j;

    .prologue
    .line 267
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/c$c;->a(Landroid/support/v4/media/j;)V

    .line 268
    return-void
.end method

.method public a(Landroid/support/v4/media/j;I)V
    .locals 1
    .param p1, "description"    # Landroid/support/v4/media/j;
    .param p2, "index"    # I

    .prologue
    .line 287
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/c$c;->a(Landroid/support/v4/media/j;I)V

    .line 288
    return-void
.end method

.method public a(Landroid/support/v4/media/session/c$a;)V
    .locals 1
    .param p1, "callback"    # Landroid/support/v4/media/session/c$a;

    .prologue
    .line 450
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/media/session/c;->a(Landroid/support/v4/media/session/c$a;Landroid/os/Handler;)V

    .line 451
    return-void
.end method

.method public a(Landroid/support/v4/media/session/c$a;Landroid/os/Handler;)V
    .locals 2
    .param p1, "callback"    # Landroid/support/v4/media/session/c$a;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 462
    if-nez p1, :cond_0

    .line 463
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_0
    if-nez p2, :cond_1

    .line 466
    new-instance p2, Landroid/os/Handler;

    .end local p2    # "handler":Landroid/os/Handler;
    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    .line 468
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_1
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/c$c;->a(Landroid/support/v4/media/session/c$a;Landroid/os/Handler;)V

    .line 469
    return-void
.end method

.method public a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V
    .locals 2
    .param p1, "command"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;
    .param p3, "cb"    # Landroid/os/ResultReceiver;

    .prologue
    .line 494
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 495
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "command cannot be null or empty"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 497
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0, p1, p2, p3}, Landroid/support/v4/media/session/c$c;->a(Ljava/lang/String;Landroid/os/Bundle;Landroid/os/ResultReceiver;)V

    .line 498
    return-void
.end method

.method public a(Landroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 220
    if-nez p1, :cond_0

    .line 221
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "KeyEvent may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 223
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/c$c;->a(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public b()Landroid/support/v4/media/session/p;
    .locals 1

    .prologue
    .line 232
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0}, Landroid/support/v4/media/session/c$c;->b()Landroid/support/v4/media/session/p;

    move-result-object v0

    return-object v0
.end method

.method public b(II)V
    .locals 1
    .param p1, "direction"    # I
    .param p2, "flags"    # I

    .prologue
    .line 440
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0, p1, p2}, Landroid/support/v4/media/session/c$c;->b(II)V

    .line 441
    return-void
.end method

.method public b(Landroid/support/v4/media/j;)V
    .locals 1
    .param p1, "description"    # Landroid/support/v4/media/j;

    .prologue
    .line 304
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/c$c;->b(Landroid/support/v4/media/j;)V

    .line 305
    return-void
.end method

.method public b(Landroid/support/v4/media/session/c$a;)V
    .locals 2
    .param p1, "callback"    # Landroid/support/v4/media/session/c$a;

    .prologue
    .line 478
    if-nez p1, :cond_0

    .line 479
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 481
    :cond_0
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0, p1}, Landroid/support/v4/media/session/c$c;->a(Landroid/support/v4/media/session/c$a;)V

    .line 482
    return-void
.end method

.method public c()Landroid/support/v4/media/m;
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0}, Landroid/support/v4/media/session/c$c;->c()Landroid/support/v4/media/m;

    move-result-object v0

    return-object v0
.end method

.method public d()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/media/session/g$f;",
            ">;"
        }
    .end annotation

    .prologue
    .line 251
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0}, Landroid/support/v4/media/session/c$c;->d()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 326
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0}, Landroid/support/v4/media/session/c$c;->e()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public f()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0}, Landroid/support/v4/media/session/c$c;->f()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public g()I
    .locals 1

    .prologue
    .line 351
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0}, Landroid/support/v4/media/session/c$c;->g()I

    move-result v0

    return v0
.end method

.method public h()I
    .locals 1

    .prologue
    .line 361
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0}, Landroid/support/v4/media/session/c$c;->h()I

    move-result v0

    return v0
.end method

.method public i()Z
    .locals 1

    .prologue
    .line 370
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0}, Landroid/support/v4/media/session/c$c;->i()Z

    move-result v0

    return v0
.end method

.method public j()J
    .locals 2

    .prologue
    .line 380
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0}, Landroid/support/v4/media/session/c$c;->j()J

    move-result-wide v0

    return-wide v0
.end method

.method public k()Landroid/support/v4/media/session/c$h;
    .locals 1

    .prologue
    .line 389
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0}, Landroid/support/v4/media/session/c$c;->k()Landroid/support/v4/media/session/c$h;

    move-result-object v0

    return-object v0
.end method

.method public l()Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0}, Landroid/support/v4/media/session/c$c;->l()Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public m()Landroid/support/v4/media/session/g$i;
    .locals 1

    .prologue
    .line 408
    iget-object v0, p0, Landroid/support/v4/media/session/c;->j:Landroid/support/v4/media/session/g$i;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .prologue
    .line 506
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0}, Landroid/support/v4/media/session/c$c;->m()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method o()Z
    .locals 2
    .annotation build Landroid/support/annotation/an;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 511
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    instance-of v0, v0, Landroid/support/v4/media/session/c$d;

    if-eqz v0, :cond_1

    .line 512
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    check-cast v0, Landroid/support/v4/media/session/c$d;

    invoke-static {v0}, Landroid/support/v4/media/session/c$d;->a(Landroid/support/v4/media/session/c$d;)Landroid/support/v4/media/session/b;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 514
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 512
    goto :goto_0

    :cond_1
    move v0, v1

    .line 514
    goto :goto_0
.end method

.method public p()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Landroid/support/v4/media/session/c;->i:Landroid/support/v4/media/session/c$c;

    invoke-interface {v0}, Landroid/support/v4/media/session/c$c;->n()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
