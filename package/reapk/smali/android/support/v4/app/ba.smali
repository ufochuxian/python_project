.class Landroid/support/v4/app/ba;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation build Landroid/support/annotation/ae;
    a = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/ba$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "call"

.field public static final b:Ljava/lang/String; = "msg"

.field public static final c:Ljava/lang/String; = "email"

.field public static final d:Ljava/lang/String; = "event"

.field public static final e:Ljava/lang/String; = "promo"

.field public static final f:Ljava/lang/String; = "alarm"

.field public static final g:Ljava/lang/String; = "progress"

.field public static final h:Ljava/lang/String; = "social"

.field public static final i:Ljava/lang/String; = "err"

.field public static final j:Ljava/lang/String; = "transport"

.field public static final k:Ljava/lang/String; = "sys"

.field public static final l:Ljava/lang/String; = "service"

.field public static final m:Ljava/lang/String; = "recommendation"

.field public static final n:Ljava/lang/String; = "status"

.field private static final o:Ljava/lang/String; = "author"

.field private static final p:Ljava/lang/String; = "text"

.field private static final q:Ljava/lang/String; = "messages"

.field private static final r:Ljava/lang/String; = "remote_input"

.field private static final s:Ljava/lang/String; = "on_reply"

.field private static final t:Ljava/lang/String; = "on_read"

.field private static final u:Ljava/lang/String; = "participants"

.field private static final v:Ljava/lang/String; = "timestamp"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method private static a(Landroid/support/v4/app/bq$a;)Landroid/app/RemoteInput;
    .locals 2
    .param p0, "src"    # Landroid/support/v4/app/bq$a;

    .prologue
    .line 232
    new-instance v0, Landroid/app/RemoteInput$Builder;

    invoke-virtual {p0}, Landroid/support/v4/app/bq$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/RemoteInput$Builder;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p0}, Landroid/support/v4/app/bq$a;->b()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setLabel(Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 234
    invoke-virtual {p0}, Landroid/support/v4/app/bq$a;->c()[Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setChoices([Ljava/lang/CharSequence;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 235
    invoke-virtual {p0}, Landroid/support/v4/app/bq$a;->d()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->setAllowFreeFormInput(Z)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 236
    invoke-virtual {p0}, Landroid/support/v4/app/bq$a;->e()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/RemoteInput$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/RemoteInput$Builder;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Landroid/app/RemoteInput$Builder;->build()Landroid/app/RemoteInput;

    move-result-object v0

    return-object v0
.end method

.method static a(Landroid/support/v4/app/bd$b;)Landroid/os/Bundle;
    .locals 10
    .param p0, "uc"    # Landroid/support/v4/app/bd$b;

    .prologue
    .line 155
    if-nez p0, :cond_0

    .line 156
    const/4 v1, 0x0

    .line 179
    :goto_0
    return-object v1

    .line 158
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 159
    .local v1, "b":Landroid/os/Bundle;
    const/4 v0, 0x0

    .line 160
    .local v0, "author":Ljava/lang/String;
    invoke-virtual {p0}, Landroid/support/v4/app/bd$b;->e()[Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-virtual {p0}, Landroid/support/v4/app/bd$b;->e()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    const/4 v7, 0x1

    if-le v6, v7, :cond_1

    .line 161
    invoke-virtual {p0}, Landroid/support/v4/app/bd$b;->e()[Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aget-object v0, v6, v7

    .line 163
    :cond_1
    invoke-virtual {p0}, Landroid/support/v4/app/bd$b;->a()[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    new-array v4, v6, [Landroid/os/Parcelable;

    .line 164
    .local v4, "messages":[Landroid/os/Parcelable;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v4

    if-ge v2, v6, :cond_2

    .line 165
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 166
    .local v3, "m":Landroid/os/Bundle;
    const-string v6, "text"

    invoke-virtual {p0}, Landroid/support/v4/app/bd$b;->a()[Ljava/lang/String;

    move-result-object v7

    aget-object v7, v7, v2

    invoke-virtual {v3, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 167
    const-string v6, "author"

    invoke-virtual {v3, v6, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 168
    aput-object v3, v4, v2

    .line 164
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 170
    .end local v3    # "m":Landroid/os/Bundle;
    :cond_2
    const-string v6, "messages"

    invoke-virtual {v1, v6, v4}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 171
    invoke-virtual {p0}, Landroid/support/v4/app/bd$b;->h()Landroid/support/v4/app/bq$a;

    move-result-object v5

    .line 172
    .local v5, "remoteInput":Landroid/support/v4/app/bq$a;
    if-eqz v5, :cond_3

    .line 173
    const-string v6, "remote_input"

    invoke-static {v5}, Landroid/support/v4/app/ba;->a(Landroid/support/v4/app/bq$a;)Landroid/app/RemoteInput;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 175
    :cond_3
    const-string v6, "on_reply"

    invoke-virtual {p0}, Landroid/support/v4/app/bd$b;->c()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 176
    const-string v6, "on_read"

    invoke-virtual {p0}, Landroid/support/v4/app/bd$b;->d()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 177
    const-string v6, "participants"

    invoke-virtual {p0}, Landroid/support/v4/app/bd$b;->e()[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putStringArray(Ljava/lang/String;[Ljava/lang/String;)V

    .line 178
    const-string v6, "timestamp"

    invoke-virtual {p0}, Landroid/support/v4/app/bd$b;->g()J

    move-result-wide v8

    invoke-virtual {v1, v6, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method static a(Landroid/os/Bundle;Landroid/support/v4/app/bd$b$a;Landroid/support/v4/app/bq$a$a;)Landroid/support/v4/app/bd$b;
    .locals 13
    .param p0, "b"    # Landroid/os/Bundle;
    .param p1, "factory"    # Landroid/support/v4/app/bd$b$a;
    .param p2, "remoteInputFactory"    # Landroid/support/v4/app/bq$a$a;

    .prologue
    const/4 v2, 0x0

    .line 185
    if-nez p0, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-object v2

    .line 188
    :cond_1
    const-string v0, "messages"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelableArray(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v9

    .line 189
    .local v9, "parcelableMessages":[Landroid/os/Parcelable;
    const/4 v1, 0x0

    .line 190
    .local v1, "messages":[Ljava/lang/String;
    if-eqz v9, :cond_3

    .line 191
    array-length v0, v9

    new-array v12, v0, [Ljava/lang/String;

    .line 192
    .local v12, "tmp":[Ljava/lang/String;
    const/4 v11, 0x1

    .line 193
    .local v11, "success":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    array-length v0, v12

    if-ge v8, v0, :cond_2

    .line 194
    aget-object v0, v9, v8

    instance-of v0, v0, Landroid/os/Bundle;

    if-nez v0, :cond_5

    .line 195
    const/4 v11, 0x0

    .line 204
    :cond_2
    :goto_2
    if-eqz v11, :cond_0

    .line 205
    move-object v1, v12

    .line 211
    .end local v8    # "i":I
    .end local v11    # "success":Z
    .end local v12    # "tmp":[Ljava/lang/String;
    :cond_3
    const-string v0, "on_read"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    .line 212
    .local v4, "onRead":Landroid/app/PendingIntent;
    const-string v0, "on_reply"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    .line 214
    .local v3, "onReply":Landroid/app/PendingIntent;
    const-string v0, "remote_input"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v10

    check-cast v10, Landroid/app/RemoteInput;

    .line 216
    .local v10, "remoteInput":Landroid/app/RemoteInput;
    const-string v0, "participants"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 217
    .local v5, "participants":[Ljava/lang/String;
    if-eqz v5, :cond_0

    array-length v0, v5

    const/4 v6, 0x1

    if-ne v0, v6, :cond_0

    .line 222
    if-eqz v10, :cond_4

    .line 224
    invoke-static {v10, p2}, Landroid/support/v4/app/ba;->a(Landroid/app/RemoteInput;Landroid/support/v4/app/bq$a$a;)Landroid/support/v4/app/bq$a;

    move-result-object v2

    :cond_4
    const-string v0, "timestamp"

    .line 227
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    move-object v0, p1

    .line 222
    invoke-interface/range {v0 .. v7}, Landroid/support/v4/app/bd$b$a;->b([Ljava/lang/String;Landroid/support/v4/app/bq$a;Landroid/app/PendingIntent;Landroid/app/PendingIntent;[Ljava/lang/String;J)Landroid/support/v4/app/bd$b;

    move-result-object v2

    goto :goto_0

    .line 198
    .end local v3    # "onReply":Landroid/app/PendingIntent;
    .end local v4    # "onRead":Landroid/app/PendingIntent;
    .end local v5    # "participants":[Ljava/lang/String;
    .end local v10    # "remoteInput":Landroid/app/RemoteInput;
    .restart local v8    # "i":I
    .restart local v11    # "success":Z
    .restart local v12    # "tmp":[Ljava/lang/String;
    :cond_5
    aget-object v0, v9, v8

    check-cast v0, Landroid/os/Bundle;

    const-string v6, "text"

    invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v12, v8

    .line 199
    aget-object v0, v12, v8

    if-nez v0, :cond_6

    .line 200
    const/4 v11, 0x0

    .line 201
    goto :goto_2

    .line 193
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto :goto_1
.end method

.method private static a(Landroid/app/RemoteInput;Landroid/support/v4/app/bq$a$a;)Landroid/support/v4/app/bq$a;
    .locals 6
    .param p0, "remoteInput"    # Landroid/app/RemoteInput;
    .param p1, "factory"    # Landroid/support/v4/app/bq$a$a;

    .prologue
    .line 243
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getResultKey()Ljava/lang/String;

    move-result-object v1

    .line 244
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getLabel()Ljava/lang/CharSequence;

    move-result-object v2

    .line 245
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getChoices()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 246
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getAllowFreeFormInput()Z

    move-result v4

    .line 247
    invoke-virtual {p0}, Landroid/app/RemoteInput;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    move-object v0, p1

    .line 243
    invoke-interface/range {v0 .. v5}, Landroid/support/v4/app/bq$a$a;->b(Ljava/lang/String;Ljava/lang/CharSequence;[Ljava/lang/CharSequence;ZLandroid/os/Bundle;)Landroid/support/v4/app/bq$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 151
    iget-object v0, p0, Landroid/app/Notification;->category:Ljava/lang/String;

    return-object v0
.end method
