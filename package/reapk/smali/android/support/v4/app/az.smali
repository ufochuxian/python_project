.class Landroid/support/v4/app/az;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x14
.end annotation

.annotation build Landroid/support/annotation/ae;
    a = 0x14
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/az$a;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method private static a(Landroid/support/v4/app/bd$a;)Landroid/app/Notification$Action;
    .locals 8
    .param p0, "actionCompat"    # Landroid/support/v4/app/bd$a;

    .prologue
    .line 156
    new-instance v0, Landroid/app/Notification$Action$Builder;

    .line 157
    invoke-virtual {p0}, Landroid/support/v4/app/bd$a;->a()I

    move-result v5

    invoke-virtual {p0}, Landroid/support/v4/app/bd$a;->b()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {p0}, Landroid/support/v4/app/bd$a;->c()Landroid/app/PendingIntent;

    move-result-object v7

    invoke-direct {v0, v5, v6, v7}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 159
    .local v0, "actionBuilder":Landroid/app/Notification$Action$Builder;
    invoke-virtual {p0}, Landroid/support/v4/app/bd$a;->d()Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 160
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/support/v4/app/bd$a;->d()Landroid/os/Bundle;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 164
    .local v1, "actionExtras":Landroid/os/Bundle;
    :goto_0
    const-string v5, "android.support.allowGeneratedReplies"

    .line 165
    invoke-virtual {p0}, Landroid/support/v4/app/bd$a;->e()Z

    move-result v6

    .line 164
    invoke-virtual {v1, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 166
    invoke-virtual {v0, v1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 167
    invoke-virtual {p0}, Landroid/support/v4/app/bd$a;->g()[Landroid/support/v4/app/bq$a;

    move-result-object v3

    .line 168
    .local v3, "remoteInputCompats":[Landroid/support/v4/app/bq$a;
    if-eqz v3, :cond_1

    .line 169
    invoke-static {v3}, Landroid/support/v4/app/bp;->a([Landroid/support/v4/app/bq$a;)[Landroid/app/RemoteInput;

    move-result-object v4

    .line 170
    .local v4, "remoteInputs":[Landroid/app/RemoteInput;
    array-length v6, v4

    const/4 v5, 0x0

    :goto_1
    if-ge v5, v6, :cond_1

    aget-object v2, v4, v5

    .line 171
    .local v2, "remoteInput":Landroid/app/RemoteInput;
    invoke-virtual {v0, v2}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 170
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 162
    .end local v1    # "actionExtras":Landroid/os/Bundle;
    .end local v2    # "remoteInput":Landroid/app/RemoteInput;
    .end local v3    # "remoteInputCompats":[Landroid/support/v4/app/bq$a;
    .end local v4    # "remoteInputs":[Landroid/app/RemoteInput;
    :cond_0
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .restart local v1    # "actionExtras":Landroid/os/Bundle;
    goto :goto_0

    .line 174
    .restart local v3    # "remoteInputCompats":[Landroid/support/v4/app/bq$a;
    :cond_1
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v5

    return-object v5
.end method

.method private static a(Landroid/app/Notification$Action;Landroid/support/v4/app/bd$a$a;Landroid/support/v4/app/bq$a$a;)Landroid/support/v4/app/bd$a;
    .locals 7
    .param p0, "action"    # Landroid/app/Notification$Action;
    .param p1, "actionFactory"    # Landroid/support/v4/app/bd$a$a;
    .param p2, "remoteInputFactory"    # Landroid/support/v4/app/bq$a$a;

    .prologue
    .line 146
    .line 147
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getRemoteInputs()[Landroid/app/RemoteInput;

    move-result-object v0

    .line 146
    invoke-static {v0, p2}, Landroid/support/v4/app/bp;->a([Landroid/app/RemoteInput;Landroid/support/v4/app/bq$a$a;)[Landroid/support/v4/app/bq$a;

    move-result-object v5

    .line 148
    .local v5, "remoteInputs":[Landroid/support/v4/app/bq$a;
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.allowGeneratedReplies"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 150
    .local v6, "allowGeneratedReplies":Z
    iget v1, p0, Landroid/app/Notification$Action;->icon:I

    iget-object v2, p0, Landroid/app/Notification$Action;->title:Ljava/lang/CharSequence;

    iget-object v3, p0, Landroid/app/Notification$Action;->actionIntent:Landroid/app/PendingIntent;

    .line 151
    invoke-virtual {p0}, Landroid/app/Notification$Action;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    move-object v0, p1

    .line 150
    invoke-interface/range {v0 .. v6}, Landroid/support/v4/app/bd$a$a;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/bq$a;Z)Landroid/support/v4/app/bd$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/app/Notification;ILandroid/support/v4/app/bd$a$a;Landroid/support/v4/app/bq$a$a;)Landroid/support/v4/app/bd$a;
    .locals 1
    .param p0, "notif"    # Landroid/app/Notification;
    .param p1, "actionIndex"    # I
    .param p2, "actionFactory"    # Landroid/support/v4/app/bd$a$a;
    .param p3, "remoteInputFactory"    # Landroid/support/v4/app/bq$a$a;

    .prologue
    .line 140
    iget-object v0, p0, Landroid/app/Notification;->actions:[Landroid/app/Notification$Action;

    aget-object v0, v0, p1

    invoke-static {v0, p2, p3}, Landroid/support/v4/app/az;->a(Landroid/app/Notification$Action;Landroid/support/v4/app/bd$a$a;Landroid/support/v4/app/bq$a$a;)Landroid/support/v4/app/bd$a;

    move-result-object v0

    return-object v0
.end method

.method public static a([Landroid/support/v4/app/bd$a;)Ljava/util/ArrayList;
    .locals 5
    .param p0, "actions"    # [Landroid/support/v4/app/bd$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/support/v4/app/bd$a;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 205
    if-nez p0, :cond_1

    .line 206
    const/4 v1, 0x0

    .line 212
    :cond_0
    return-object v1

    .line 208
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 209
    .local v1, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 210
    .local v0, "action":Landroid/support/v4/app/bd$a;
    invoke-static {v0}, Landroid/support/v4/app/az;->a(Landroid/support/v4/app/bd$a;)Landroid/app/Notification$Action;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 209
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/app/Notification$Builder;Landroid/support/v4/app/bd$a;)V
    .locals 6
    .param p0, "b"    # Landroid/app/Notification$Builder;
    .param p1, "action"    # Landroid/support/v4/app/bd$a;

    .prologue
    .line 117
    new-instance v0, Landroid/app/Notification$Action$Builder;

    .line 118
    invoke-virtual {p1}, Landroid/support/v4/app/bd$a;->a()I

    move-result v3

    invoke-virtual {p1}, Landroid/support/v4/app/bd$a;->b()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p1}, Landroid/support/v4/app/bd$a;->c()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v0, v3, v4, v5}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 119
    .local v0, "actionBuilder":Landroid/app/Notification$Action$Builder;
    invoke-virtual {p1}, Landroid/support/v4/app/bd$a;->g()[Landroid/support/v4/app/bq$a;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 121
    invoke-virtual {p1}, Landroid/support/v4/app/bd$a;->g()[Landroid/support/v4/app/bq$a;

    move-result-object v3

    .line 120
    invoke-static {v3}, Landroid/support/v4/app/bp;->a([Landroid/support/v4/app/bq$a;)[Landroid/app/RemoteInput;

    move-result-object v4

    array-length v5, v4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v5, :cond_0

    aget-object v2, v4, v3

    .line 122
    .local v2, "remoteInput":Landroid/app/RemoteInput;
    invoke-virtual {v0, v2}, Landroid/app/Notification$Action$Builder;->addRemoteInput(Landroid/app/RemoteInput;)Landroid/app/Notification$Action$Builder;

    .line 120
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 126
    .end local v2    # "remoteInput":Landroid/app/RemoteInput;
    :cond_0
    invoke-virtual {p1}, Landroid/support/v4/app/bd$a;->d()Landroid/os/Bundle;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 127
    new-instance v1, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/bd$a;->d()Landroid/os/Bundle;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 131
    .local v1, "actionExtras":Landroid/os/Bundle;
    :goto_1
    const-string v3, "android.support.allowGeneratedReplies"

    .line 132
    invoke-virtual {p1}, Landroid/support/v4/app/bd$a;->e()Z

    move-result v4

    .line 131
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 133
    invoke-virtual {v0, v1}, Landroid/app/Notification$Action$Builder;->addExtras(Landroid/os/Bundle;)Landroid/app/Notification$Action$Builder;

    .line 134
    invoke-virtual {v0}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    .line 135
    return-void

    .line 129
    .end local v1    # "actionExtras":Landroid/os/Bundle;
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .restart local v1    # "actionExtras":Landroid/os/Bundle;
    goto :goto_1
.end method

.method public static a(Landroid/app/Notification;)Z
    .locals 1
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 216
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Ljava/util/ArrayList;Landroid/support/v4/app/bd$a$a;Landroid/support/v4/app/bq$a$a;)[Landroid/support/v4/app/bd$a;
    .locals 4
    .param p1, "actionFactory"    # Landroid/support/v4/app/bd$a$a;
    .param p2, "remoteInputFactory"    # Landroid/support/v4/app/bq$a$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Parcelable;",
            ">;",
            "Landroid/support/v4/app/bd$a$a;",
            "Landroid/support/v4/app/bq$a$a;",
            ")[",
            "Landroid/support/v4/app/bd$a;"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-nez p0, :cond_1

    .line 188
    const/4 v1, 0x0

    .line 195
    :cond_0
    return-object v1

    .line 190
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-interface {p1, v3}, Landroid/support/v4/app/bd$a$a;->b(I)[Landroid/support/v4/app/bd$a;

    move-result-object v1

    .line 191
    .local v1, "actions":[Landroid/support/v4/app/bd$a;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    .line 192
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Notification$Action;

    .line 193
    .local v0, "action":Landroid/app/Notification$Action;
    invoke-static {v0, p1, p2}, Landroid/support/v4/app/az;->a(Landroid/app/Notification$Action;Landroid/support/v4/app/bd$a$a;Landroid/support/v4/app/bq$a$a;)Landroid/support/v4/app/bd$a;

    move-result-object v3

    aput-object v3, v1, v2

    .line 191
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 220
    invoke-virtual {p0}, Landroid/app/Notification;->getGroup()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static c(Landroid/app/Notification;)Z
    .locals 1
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 224
    iget v0, p0, Landroid/app/Notification;->flags:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static d(Landroid/app/Notification;)Ljava/lang/String;
    .locals 1
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 228
    invoke-virtual {p0}, Landroid/app/Notification;->getSortKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
