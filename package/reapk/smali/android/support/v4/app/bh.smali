.class Landroid/support/v4/app/bh;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x10
.end annotation

.annotation build Landroid/support/annotation/ae;
    a = 0x10
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/bh$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "NotificationCompat"

.field static final b:Ljava/lang/String; = "android.support.localOnly"

.field static final c:Ljava/lang/String; = "android.support.actionExtras"

.field static final d:Ljava/lang/String; = "android.support.remoteInputs"

.field static final e:Ljava/lang/String; = "android.support.groupKey"

.field static final f:Ljava/lang/String; = "android.support.isGroupSummary"

.field static final g:Ljava/lang/String; = "android.support.sortKey"

.field static final h:Ljava/lang/String; = "android.support.useSideChannel"

.field static final i:Ljava/lang/String; = "android.support.allowGeneratedReplies"

.field private static final j:Ljava/lang/String; = "icon"

.field private static final k:Ljava/lang/String; = "title"

.field private static final l:Ljava/lang/String; = "actionIntent"

.field private static final m:Ljava/lang/String; = "extras"

.field private static final n:Ljava/lang/String; = "remoteInputs"

.field private static final o:Ljava/lang/String; = "allowGeneratedReplies"

.field private static final p:Ljava/lang/Object;

.field private static q:Ljava/lang/reflect/Field;

.field private static r:Z

.field private static final s:Ljava/lang/Object;

.field private static t:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static u:Ljava/lang/reflect/Field;

.field private static v:Ljava/lang/reflect/Field;

.field private static w:Ljava/lang/reflect/Field;

.field private static x:Ljava/lang/reflect/Field;

.field private static y:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/bh;->p:Ljava/lang/Object;

    .line 62
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/bh;->s:Ljava/lang/Object;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    return-void
.end method

.method public static a(Landroid/app/Notification$Builder;Landroid/support/v4/app/bd$a;)Landroid/os/Bundle;
    .locals 4
    .param p0, "builder"    # Landroid/app/Notification$Builder;
    .param p1, "action"    # Landroid/support/v4/app/bd$a;

    .prologue
    .line 278
    invoke-virtual {p1}, Landroid/support/v4/app/bd$a;->a()I

    move-result v1

    invoke-virtual {p1}, Landroid/support/v4/app/bd$a;->b()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {p1}, Landroid/support/v4/app/bd$a;->c()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {p0, v1, v2, v3}, Landroid/app/Notification$Builder;->addAction(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 279
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p1}, Landroid/support/v4/app/bd$a;->d()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 280
    .local v0, "actionExtras":Landroid/os/Bundle;
    invoke-virtual {p1}, Landroid/support/v4/app/bd$a;->g()[Landroid/support/v4/app/bq$a;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 281
    const-string v1, "android.support.remoteInputs"

    .line 282
    invoke-virtual {p1}, Landroid/support/v4/app/bd$a;->g()[Landroid/support/v4/app/bq$a;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/app/br;->a([Landroid/support/v4/app/bq$a;)[Landroid/os/Bundle;

    move-result-object v2

    .line 281
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 284
    :cond_0
    const-string v1, "android.support.allowGeneratedReplies"

    .line 285
    invoke-virtual {p1}, Landroid/support/v4/app/bd$a;->e()Z

    move-result v2

    .line 284
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 286
    return-object v0
.end method

.method public static a(Landroid/app/Notification;)Landroid/os/Bundle;
    .locals 7
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    const/4 v3, 0x0

    .line 229
    sget-object v4, Landroid/support/v4/app/bh;->p:Ljava/lang/Object;

    monitor-enter v4

    .line 230
    :try_start_0
    sget-boolean v5, Landroid/support/v4/app/bh;->r:Z

    if-eqz v5, :cond_0

    .line 231
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v3

    .line 256
    :goto_0
    return-object v1

    .line 234
    :cond_0
    :try_start_1
    sget-object v5, Landroid/support/v4/app/bh;->q:Ljava/lang/reflect/Field;

    if-nez v5, :cond_2

    .line 235
    const-class v5, Landroid/app/Notification;

    const-string v6, "extras"

    invoke-virtual {v5, v6}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 236
    .local v2, "extrasField":Ljava/lang/reflect/Field;
    const-class v5, Landroid/os/Bundle;

    invoke-virtual {v2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 237
    const-string v5, "NotificationCompat"

    const-string v6, "Notification.extras field is not of type Bundle"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/4 v5, 0x1

    sput-boolean v5, Landroid/support/v4/app/bh;->r:Z
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 239
    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v1, v3

    goto :goto_0

    .line 241
    :cond_1
    const/4 v5, 0x1

    :try_start_3
    invoke-virtual {v2, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 242
    sput-object v2, Landroid/support/v4/app/bh;->q:Ljava/lang/reflect/Field;

    .line 244
    .end local v2    # "extrasField":Ljava/lang/reflect/Field;
    :cond_2
    sget-object v5, Landroid/support/v4/app/bh;->q:Ljava/lang/reflect/Field;

    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    .line 245
    .local v1, "extras":Landroid/os/Bundle;
    if-nez v1, :cond_3

    .line 246
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "extras":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 247
    .restart local v1    # "extras":Landroid/os/Bundle;
    sget-object v5, Landroid/support/v4/app/bh;->q:Ljava/lang/reflect/Field;

    invoke-virtual {v5, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 249
    :cond_3
    :try_start_4
    monitor-exit v4

    goto :goto_0

    .line 257
    .end local v1    # "extras":Landroid/os/Bundle;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v3

    .line 250
    :catch_0
    move-exception v0

    .line 251
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_5
    const-string v5, "NotificationCompat"

    const-string v6, "Unable to access notification extras"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 255
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :goto_1
    const/4 v5, 0x1

    sput-boolean v5, Landroid/support/v4/app/bh;->r:Z

    .line 256
    monitor-exit v4

    move-object v1, v3

    goto :goto_0

    .line 252
    :catch_1
    move-exception v0

    .line 253
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v5, "NotificationCompat"

    const-string v6, "Unable to access notification extras"

    invoke-static {v5, v6, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private static a(Landroid/support/v4/app/bd$a;)Landroid/os/Bundle;
    .locals 4
    .param p0, "action"    # Landroid/support/v4/app/bd$a;

    .prologue
    .line 411
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 412
    .local v1, "bundle":Landroid/os/Bundle;
    const-string v2, "icon"

    invoke-virtual {p0}, Landroid/support/v4/app/bd$a;->a()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 413
    const-string v2, "title"

    invoke-virtual {p0}, Landroid/support/v4/app/bd$a;->b()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 414
    const-string v2, "actionIntent"

    invoke-virtual {p0}, Landroid/support/v4/app/bd$a;->c()Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 416
    invoke-virtual {p0}, Landroid/support/v4/app/bd$a;->d()Landroid/os/Bundle;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 417
    new-instance v0, Landroid/os/Bundle;

    invoke-virtual {p0}, Landroid/support/v4/app/bd$a;->d()Landroid/os/Bundle;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 421
    .local v0, "actionExtras":Landroid/os/Bundle;
    :goto_0
    const-string v2, "android.support.allowGeneratedReplies"

    .line 422
    invoke-virtual {p0}, Landroid/support/v4/app/bd$a;->e()Z

    move-result v3

    .line 421
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 423
    const-string v2, "extras"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 424
    const-string v2, "remoteInputs"

    .line 425
    invoke-virtual {p0}, Landroid/support/v4/app/bd$a;->g()[Landroid/support/v4/app/bq$a;

    move-result-object v3

    .line 424
    invoke-static {v3}, Landroid/support/v4/app/br;->a([Landroid/support/v4/app/bq$a;)[Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelableArray(Ljava/lang/String;[Landroid/os/Parcelable;)V

    .line 426
    return-object v1

    .line 419
    .end local v0    # "actionExtras":Landroid/os/Bundle;
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .restart local v0    # "actionExtras":Landroid/os/Bundle;
    goto :goto_0
.end method

.method public static a(Landroid/app/Notification;ILandroid/support/v4/app/bd$a$a;Landroid/support/v4/app/bq$a$a;)Landroid/support/v4/app/bd$a;
    .locals 12
    .param p0, "notif"    # Landroid/app/Notification;
    .param p1, "actionIndex"    # I
    .param p2, "factory"    # Landroid/support/v4/app/bd$a$a;
    .param p3, "remoteInputFactory"    # Landroid/support/v4/app/bq$a$a;

    .prologue
    .line 299
    sget-object v11, Landroid/support/v4/app/bh;->s:Ljava/lang/Object;

    monitor-enter v11

    .line 301
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/bh;->g(Landroid/app/Notification;)[Ljava/lang/Object;

    move-result-object v8

    .line 302
    .local v8, "actionObjects":[Ljava/lang/Object;
    if-eqz v8, :cond_1

    .line 303
    aget-object v7, v8, p1

    .line 304
    .local v7, "actionObject":Ljava/lang/Object;
    const/4 v5, 0x0

    .line 305
    .local v5, "actionExtras":Landroid/os/Bundle;
    invoke-static {p0}, Landroid/support/v4/app/bh;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v10

    .line 306
    .local v10, "extras":Landroid/os/Bundle;
    if-eqz v10, :cond_0

    .line 307
    const-string v0, "android.support.actionExtras"

    invoke-virtual {v10, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v6

    .line 309
    .local v6, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    if-eqz v6, :cond_0

    .line 310
    invoke-virtual {v6, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "actionExtras":Landroid/os/Bundle;
    check-cast v5, Landroid/os/Bundle;

    .line 313
    .end local v6    # "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    .restart local v5    # "actionExtras":Landroid/os/Bundle;
    :cond_0
    sget-object v0, Landroid/support/v4/app/bh;->v:Ljava/lang/reflect/Field;

    .line 314
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v2

    sget-object v0, Landroid/support/v4/app/bh;->w:Ljava/lang/reflect/Field;

    .line 315
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/CharSequence;

    sget-object v0, Landroid/support/v4/app/bh;->x:Ljava/lang/reflect/Field;

    .line 316
    invoke-virtual {v0, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/PendingIntent;

    move-object v0, p2

    move-object v1, p3

    .line 313
    invoke-static/range {v0 .. v5}, Landroid/support/v4/app/bh;->a(Landroid/support/v4/app/bd$a$a;Landroid/support/v4/app/bq$a$a;ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroid/support/v4/app/bd$a;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :try_start_1
    monitor-exit v11

    .line 324
    .end local v5    # "actionExtras":Landroid/os/Bundle;
    .end local v7    # "actionObject":Ljava/lang/Object;
    .end local v8    # "actionObjects":[Ljava/lang/Object;
    .end local v10    # "extras":Landroid/os/Bundle;
    :goto_0
    return-object v0

    .line 319
    :catch_0
    move-exception v9

    .line 320
    .local v9, "e":Ljava/lang/IllegalAccessException;
    const-string v0, "NotificationCompat"

    const-string v1, "Unable to access notification actions"

    invoke-static {v0, v1, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 321
    const/4 v0, 0x1

    sput-boolean v0, Landroid/support/v4/app/bh;->y:Z

    .line 323
    .end local v9    # "e":Ljava/lang/IllegalAccessException;
    :cond_1
    monitor-exit v11

    .line 324
    const/4 v0, 0x0

    goto :goto_0

    .line 323
    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static a(Landroid/os/Bundle;Landroid/support/v4/app/bd$a$a;Landroid/support/v4/app/bq$a$a;)Landroid/support/v4/app/bd$a;
    .locals 8
    .param p0, "bundle"    # Landroid/os/Bundle;
    .param p1, "actionFactory"    # Landroid/support/v4/app/bd$a$a;
    .param p2, "remoteInputFactory"    # Landroid/support/v4/app/bq$a$a;

    .prologue
    .line 383
    const-string v0, "extras"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    .line 384
    .local v7, "extras":Landroid/os/Bundle;
    const/4 v6, 0x0

    .line 385
    .local v6, "allowGeneratedReplies":Z
    if-eqz v7, :cond_0

    .line 386
    const-string v0, "android.support.allowGeneratedReplies"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 388
    :cond_0
    const-string v0, "icon"

    .line 389
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v0, "title"

    .line 390
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v0, "actionIntent"

    .line 391
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/app/PendingIntent;

    const-string v0, "extras"

    .line 392
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v4

    const-string v0, "remoteInputs"

    .line 394
    invoke-static {p0, v0}, Landroid/support/v4/app/ab;->a(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v0

    .line 393
    invoke-static {v0, p2}, Landroid/support/v4/app/br;->a([Landroid/os/Bundle;Landroid/support/v4/app/bq$a$a;)[Landroid/support/v4/app/bq$a;

    move-result-object v5

    move-object v0, p1

    .line 388
    invoke-interface/range {v0 .. v6}, Landroid/support/v4/app/bd$a$a;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/bq$a;Z)Landroid/support/v4/app/bd$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/support/v4/app/bd$a$a;Landroid/support/v4/app/bq$a$a;ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;)Landroid/support/v4/app/bd$a;
    .locals 7
    .param p0, "factory"    # Landroid/support/v4/app/bd$a$a;
    .param p1, "remoteInputFactory"    # Landroid/support/v4/app/bq$a$a;
    .param p2, "icon"    # I
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "actionIntent"    # Landroid/app/PendingIntent;
    .param p5, "extras"    # Landroid/os/Bundle;

    .prologue
    .line 264
    const/4 v5, 0x0

    .line 265
    .local v5, "remoteInputs":[Landroid/support/v4/app/bq$a;
    const/4 v6, 0x0

    .line 266
    .local v6, "allowGeneratedReplies":Z
    if-eqz p5, :cond_0

    .line 267
    const-string v0, "android.support.remoteInputs"

    .line 268
    invoke-static {p5, v0}, Landroid/support/v4/app/ab;->a(Landroid/os/Bundle;Ljava/lang/String;)[Landroid/os/Bundle;

    move-result-object v0

    .line 267
    invoke-static {v0, p1}, Landroid/support/v4/app/br;->a([Landroid/os/Bundle;Landroid/support/v4/app/bq$a$a;)[Landroid/support/v4/app/bq$a;

    move-result-object v5

    .line 270
    const-string v0, "android.support.allowGeneratedReplies"

    invoke-virtual {p5, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    :cond_0
    move-object v0, p0

    move v1, p2

    move-object v2, p3

    move-object v3, p4

    move-object v4, p5

    .line 272
    invoke-interface/range {v0 .. v6}, Landroid/support/v4/app/bd$a$a;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/os/Bundle;[Landroid/support/v4/app/bq$a;Z)Landroid/support/v4/app/bd$a;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;)Landroid/util/SparseArray;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/os/Bundle;",
            ">;)",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 211
    .local p0, "actionExtrasList":Ljava/util/List;, "Ljava/util/List<Landroid/os/Bundle;>;"
    const/4 v1, 0x0

    .line 212
    .local v1, "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "count":I
    :goto_0
    if-ge v3, v2, :cond_2

    .line 213
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Bundle;

    .line 214
    .local v0, "actionExtras":Landroid/os/Bundle;
    if-eqz v0, :cond_1

    .line 215
    if-nez v1, :cond_0

    .line 216
    new-instance v1, Landroid/util/SparseArray;

    .end local v1    # "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 218
    .restart local v1    # "actionExtrasMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Bundle;>;"
    :cond_0
    invoke-virtual {v1, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 212
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 221
    .end local v0    # "actionExtras":Landroid/os/Bundle;
    :cond_2
    return-object v1
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
    .line 400
    if-nez p0, :cond_1

    .line 401
    const/4 v1, 0x0

    .line 407
    :cond_0
    return-object v1

    .line 403
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, p0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 404
    .local v1, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    array-length v3, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, p0, v2

    .line 405
    .local v0, "action":Landroid/support/v4/app/bd$a;
    invoke-static {v0}, Landroid/support/v4/app/bh;->a(Landroid/support/v4/app/bd$a;)Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 404
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static a(Landroid/support/v4/app/ax;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Z)V
    .locals 3
    .param p0, "b"    # Landroid/support/v4/app/ax;
    .param p1, "bigContentTitle"    # Ljava/lang/CharSequence;
    .param p2, "useSummary"    # Z
    .param p3, "summaryText"    # Ljava/lang/CharSequence;
    .param p4, "bigPicture"    # Landroid/graphics/Bitmap;
    .param p5, "bigLargeIcon"    # Landroid/graphics/Bitmap;
    .param p6, "bigLargeIconSet"    # Z

    .prologue
    .line 185
    new-instance v1, Landroid/app/Notification$BigPictureStyle;

    invoke-interface {p0}, Landroid/support/v4/app/ax;->a()Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Notification$BigPictureStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 186
    invoke-virtual {v1, p1}, Landroid/app/Notification$BigPictureStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v1

    .line 187
    invoke-virtual {v1, p4}, Landroid/app/Notification$BigPictureStyle;->bigPicture(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    move-result-object v0

    .line 188
    .local v0, "style":Landroid/app/Notification$BigPictureStyle;
    if-eqz p6, :cond_0

    .line 189
    invoke-virtual {v0, p5}, Landroid/app/Notification$BigPictureStyle;->bigLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$BigPictureStyle;

    .line 191
    :cond_0
    if-eqz p2, :cond_1

    .line 192
    invoke-virtual {v0, p3}, Landroid/app/Notification$BigPictureStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigPictureStyle;

    .line 194
    :cond_1
    return-void
.end method

.method public static a(Landroid/support/v4/app/ax;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3
    .param p0, "b"    # Landroid/support/v4/app/ax;
    .param p1, "bigContentTitle"    # Ljava/lang/CharSequence;
    .param p2, "useSummary"    # Z
    .param p3, "summaryText"    # Ljava/lang/CharSequence;
    .param p4, "bigText"    # Ljava/lang/CharSequence;

    .prologue
    .line 173
    new-instance v1, Landroid/app/Notification$BigTextStyle;

    invoke-interface {p0}, Landroid/support/v4/app/ax;->a()Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/Notification$BigTextStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 174
    invoke-virtual {v1, p1}, Landroid/app/Notification$BigTextStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v1

    .line 175
    invoke-virtual {v1, p4}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    .line 176
    .local v0, "style":Landroid/app/Notification$BigTextStyle;
    if-eqz p2, :cond_0

    .line 177
    invoke-virtual {v0, p3}, Landroid/app/Notification$BigTextStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 179
    :cond_0
    return-void
.end method

.method public static a(Landroid/support/v4/app/ax;Ljava/lang/CharSequence;ZLjava/lang/CharSequence;Ljava/util/ArrayList;)V
    .locals 4
    .param p0, "b"    # Landroid/support/v4/app/ax;
    .param p1, "bigContentTitle"    # Ljava/lang/CharSequence;
    .param p2, "useSummary"    # Z
    .param p3, "summaryText"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/app/ax;",
            "Ljava/lang/CharSequence;",
            "Z",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 199
    .local p4, "texts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/CharSequence;>;"
    new-instance v2, Landroid/app/Notification$InboxStyle;

    invoke-interface {p0}, Landroid/support/v4/app/ax;->a()Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/Notification$InboxStyle;-><init>(Landroid/app/Notification$Builder;)V

    .line 200
    invoke-virtual {v2, p1}, Landroid/app/Notification$InboxStyle;->setBigContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    move-result-object v0

    .line 201
    .local v0, "style":Landroid/app/Notification$InboxStyle;
    if-eqz p2, :cond_0

    .line 202
    invoke-virtual {v0, p3}, Landroid/app/Notification$InboxStyle;->setSummaryText(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    .line 204
    :cond_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 205
    .local v1, "text":Ljava/lang/CharSequence;
    invoke-virtual {v0, v1}, Landroid/app/Notification$InboxStyle;->addLine(Ljava/lang/CharSequence;)Landroid/app/Notification$InboxStyle;

    goto :goto_0

    .line 207
    .end local v1    # "text":Ljava/lang/CharSequence;
    :cond_1
    return-void
.end method

.method private static a()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 343
    sget-boolean v3, Landroid/support/v4/app/bh;->y:Z

    if-eqz v3, :cond_0

    .line 362
    :goto_0
    return v2

    .line 347
    :cond_0
    :try_start_0
    sget-object v3, Landroid/support/v4/app/bh;->u:Ljava/lang/reflect/Field;

    if-nez v3, :cond_1

    .line 348
    const-string v3, "android.app.Notification$Action"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    sput-object v3, Landroid/support/v4/app/bh;->t:Ljava/lang/Class;

    .line 349
    sget-object v3, Landroid/support/v4/app/bh;->t:Ljava/lang/Class;

    const-string v4, "icon"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroid/support/v4/app/bh;->v:Ljava/lang/reflect/Field;

    .line 350
    sget-object v3, Landroid/support/v4/app/bh;->t:Ljava/lang/Class;

    const-string v4, "title"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroid/support/v4/app/bh;->w:Ljava/lang/reflect/Field;

    .line 351
    sget-object v3, Landroid/support/v4/app/bh;->t:Ljava/lang/Class;

    const-string v4, "actionIntent"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroid/support/v4/app/bh;->x:Ljava/lang/reflect/Field;

    .line 352
    const-class v3, Landroid/app/Notification;

    const-string v4, "actions"

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    sput-object v3, Landroid/support/v4/app/bh;->u:Ljava/lang/reflect/Field;

    .line 353
    sget-object v3, Landroid/support/v4/app/bh;->u:Ljava/lang/reflect/Field;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_1

    .line 362
    :cond_1
    :goto_1
    sget-boolean v3, Landroid/support/v4/app/bh;->y:Z

    if-nez v3, :cond_2

    :goto_2
    move v2, v1

    goto :goto_0

    .line 355
    :catch_0
    move-exception v0

    .line 356
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification actions"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    sput-boolean v1, Landroid/support/v4/app/bh;->y:Z

    goto :goto_1

    .line 358
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v0

    .line 359
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    const-string v3, "NotificationCompat"

    const-string v4, "Unable to access notification actions"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 360
    sput-boolean v1, Landroid/support/v4/app/bh;->y:Z

    goto :goto_1

    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :cond_2
    move v1, v2

    .line 362
    goto :goto_2
.end method

.method public static a(Ljava/util/ArrayList;Landroid/support/v4/app/bd$a$a;Landroid/support/v4/app/bq$a$a;)[Landroid/support/v4/app/bd$a;
    .locals 3
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
    .line 369
    .local p0, "parcelables":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/Parcelable;>;"
    if-nez p0, :cond_1

    .line 370
    const/4 v0, 0x0

    .line 377
    :cond_0
    return-object v0

    .line 372
    :cond_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {p1, v2}, Landroid/support/v4/app/bd$a$a;->b(I)[Landroid/support/v4/app/bd$a;

    move-result-object v0

    .line 373
    .local v0, "actions":[Landroid/support/v4/app/bd$a;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 374
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    invoke-static {v2, p1, p2}, Landroid/support/v4/app/bh;->a(Landroid/os/Bundle;Landroid/support/v4/app/bd$a$a;Landroid/support/v4/app/bq$a$a;)Landroid/support/v4/app/bd$a;

    move-result-object v2

    aput-object v2, v0, v1

    .line 373
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static b(Landroid/app/Notification;)I
    .locals 3
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 290
    sget-object v2, Landroid/support/v4/app/bh;->s:Ljava/lang/Object;

    monitor-enter v2

    .line 291
    :try_start_0
    invoke-static {p0}, Landroid/support/v4/app/bh;->g(Landroid/app/Notification;)[Ljava/lang/Object;

    move-result-object v0

    .line 292
    .local v0, "actionObjects":[Ljava/lang/Object;
    if-eqz v0, :cond_0

    array-length v1, v0

    :goto_0
    monitor-exit v2

    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 293
    .end local v0    # "actionObjects":[Ljava/lang/Object;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static c(Landroid/app/Notification;)Z
    .locals 2
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    .line 430
    invoke-static {p0}, Landroid/support/v4/app/bh;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.localOnly"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static d(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    .line 434
    invoke-static {p0}, Landroid/support/v4/app/bh;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.groupKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static e(Landroid/app/Notification;)Z
    .locals 2
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    .line 438
    invoke-static {p0}, Landroid/support/v4/app/bh;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.isGroupSummary"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static f(Landroid/app/Notification;)Ljava/lang/String;
    .locals 2
    .param p0, "n"    # Landroid/app/Notification;

    .prologue
    .line 442
    invoke-static {p0}, Landroid/support/v4/app/bh;->a(Landroid/app/Notification;)Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.support.sortKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static g(Landroid/app/Notification;)[Ljava/lang/Object;
    .locals 5
    .param p0, "notif"    # Landroid/app/Notification;

    .prologue
    const/4 v2, 0x0

    .line 328
    sget-object v3, Landroid/support/v4/app/bh;->s:Ljava/lang/Object;

    monitor-enter v3

    .line 329
    :try_start_0
    invoke-static {}, Landroid/support/v4/app/bh;->a()Z

    move-result v1

    if-nez v1, :cond_0

    .line 330
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v2

    .line 337
    :goto_0
    return-object v1

    .line 333
    :cond_0
    :try_start_1
    sget-object v1, Landroid/support/v4/app/bh;->u:Ljava/lang/reflect/Field;

    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v3

    goto :goto_0

    .line 339
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 334
    :catch_0
    move-exception v0

    .line 335
    .local v0, "e":Ljava/lang/IllegalAccessException;
    :try_start_3
    const-string v1, "NotificationCompat"

    const-string v4, "Unable to access notification actions"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 336
    const/4 v1, 0x1

    sput-boolean v1, Landroid/support/v4/app/bh;->y:Z

    .line 337
    monitor-exit v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    goto :goto_0
.end method
