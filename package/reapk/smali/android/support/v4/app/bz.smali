.class public final Landroid/support/v4/app/bz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/bz$e;,
        Landroid/support/v4/app/bz$d;,
        Landroid/support/v4/app/bz$c;,
        Landroid/support/v4/app/bz$b;,
        Landroid/support/v4/app/bz$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable",
        "<",
        "Landroid/content/Intent;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String; = "TaskStackBuilder"

.field private static final b:Landroid/support/v4/app/bz$b;


# instance fields
.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 115
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 116
    new-instance v0, Landroid/support/v4/app/bz$d;

    invoke-direct {v0}, Landroid/support/v4/app/bz$d;-><init>()V

    sput-object v0, Landroid/support/v4/app/bz;->b:Landroid/support/v4/app/bz$b;

    .line 120
    :goto_0
    return-void

    .line 118
    :cond_0
    new-instance v0, Landroid/support/v4/app/bz$c;

    invoke-direct {v0}, Landroid/support/v4/app/bz$c;-><init>()V

    sput-object v0, Landroid/support/v4/app/bz;->b:Landroid/support/v4/app/bz$b;

    goto :goto_0
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "a"    # Landroid/content/Context;

    .prologue
    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v4/app/bz;->c:Ljava/util/ArrayList;

    .line 126
    iput-object p1, p0, Landroid/support/v4/app/bz;->d:Landroid/content/Context;

    .line 127
    return-void
.end method

.method public static a(Landroid/content/Context;)Landroid/support/v4/app/bz;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 137
    new-instance v0, Landroid/support/v4/app/bz;

    invoke-direct {v0, p0}, Landroid/support/v4/app/bz;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public static b(Landroid/content/Context;)Landroid/support/v4/app/bz;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 151
    invoke-static {p0}, Landroid/support/v4/app/bz;->a(Landroid/content/Context;)Landroid/support/v4/app/bz;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Landroid/support/v4/app/bz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(II)Landroid/app/PendingIntent;
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "flags"    # I

    .prologue
    .line 347
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/v4/app/bz;->a(IILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public a(IILandroid/os/Bundle;)Landroid/app/PendingIntent;
    .locals 6
    .param p1, "requestCode"    # I
    .param p2, "flags"    # I
    .param p3, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x0

    .line 364
    iget-object v0, p0, Landroid/support/v4/app/bz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 369
    :cond_0
    iget-object v0, p0, Landroid/support/v4/app/bz;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/bz;->c:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/content/Intent;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/content/Intent;

    .line 370
    .local v2, "intents":[Landroid/content/Intent;
    new-instance v0, Landroid/content/Intent;

    aget-object v1, v2, v3

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v1, 0x1000c000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    aput-object v0, v2, v3

    .line 374
    sget-object v0, Landroid/support/v4/app/bz;->b:Landroid/support/v4/app/bz$b;

    iget-object v1, p0, Landroid/support/v4/app/bz;->d:Landroid/content/Context;

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-interface/range {v0 .. v5}, Landroid/support/v4/app/bz$b;->a(Landroid/content/Context;[Landroid/content/Intent;IILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method

.method public a(I)Landroid/content/Intent;
    .locals 1
    .param p1, "index"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 272
    invoke-virtual {p0, p1}, Landroid/support/v4/app/bz;->b(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/app/Activity;)Landroid/support/v4/app/bz;
    .locals 3
    .param p1, "sourceActivity"    # Landroid/app/Activity;

    .prologue
    .line 198
    const/4 v0, 0x0

    .line 199
    .local v0, "parent":Landroid/content/Intent;
    instance-of v2, p1, Landroid/support/v4/app/bz$a;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 200
    check-cast v2, Landroid/support/v4/app/bz$a;

    invoke-interface {v2}, Landroid/support/v4/app/bz$a;->getSupportParentActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 202
    :cond_0
    if-nez v0, :cond_1

    .line 203
    invoke-static {p1}, Landroid/support/v4/app/au;->b(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    .line 206
    :cond_1
    if-eqz v0, :cond_3

    .line 209
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 210
    .local v1, "target":Landroid/content/ComponentName;
    if-nez v1, :cond_2

    .line 211
    iget-object v2, p0, Landroid/support/v4/app/bz;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    .line 213
    :cond_2
    invoke-virtual {p0, v1}, Landroid/support/v4/app/bz;->a(Landroid/content/ComponentName;)Landroid/support/v4/app/bz;

    .line 214
    invoke-virtual {p0, v0}, Landroid/support/v4/app/bz;->a(Landroid/content/Intent;)Landroid/support/v4/app/bz;

    .line 216
    .end local v1    # "target":Landroid/content/ComponentName;
    :cond_3
    return-object p0
.end method

.method public a(Landroid/content/ComponentName;)Landroid/support/v4/app/bz;
    .locals 5
    .param p1, "sourceActivityName"    # Landroid/content/ComponentName;

    .prologue
    .line 239
    iget-object v3, p0, Landroid/support/v4/app/bz;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 241
    .local v1, "insertAt":I
    :try_start_0
    iget-object v3, p0, Landroid/support/v4/app/bz;->d:Landroid/content/Context;

    invoke-static {v3, p1}, Landroid/support/v4/app/au;->a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 242
    .local v2, "parent":Landroid/content/Intent;
    :goto_0
    if-eqz v2, :cond_0

    .line 243
    iget-object v3, p0, Landroid/support/v4/app/bz;->c:Ljava/util/ArrayList;

    invoke-virtual {v3, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 244
    iget-object v3, p0, Landroid/support/v4/app/bz;->d:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v4/app/au;->a(Landroid/content/Context;Landroid/content/ComponentName;)Landroid/content/Intent;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 246
    .end local v2    # "parent":Landroid/content/Intent;
    :catch_0
    move-exception v0

    .line 247
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "TaskStackBuilder"

    const-string v4, "Bad ComponentName while traversing activity parent metadata"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 250
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .restart local v2    # "parent":Landroid/content/Intent;
    :cond_0
    return-object p0
.end method

.method public a(Landroid/content/Intent;)Landroid/support/v4/app/bz;
    .locals 1
    .param p1, "nextIntent"    # Landroid/content/Intent;

    .prologue
    .line 162
    iget-object v0, p0, Landroid/support/v4/app/bz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    return-object p0
.end method

.method public a(Ljava/lang/Class;)Landroid/support/v4/app/bz;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Landroid/support/v4/app/bz;"
        }
    .end annotation

    .prologue
    .line 227
    .local p1, "sourceActivityClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p0, Landroid/support/v4/app/bz;->d:Landroid/content/Context;

    invoke-direct {v0, v1, p1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Landroid/support/v4/app/bz;->a(Landroid/content/ComponentName;)Landroid/support/v4/app/bz;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "options"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 319
    iget-object v2, p0, Landroid/support/v4/app/bz;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "No intents added to TaskStackBuilder; cannot startActivities"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 324
    :cond_0
    iget-object v2, p0, Landroid/support/v4/app/bz;->c:Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/support/v4/app/bz;->c:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/Intent;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/content/Intent;

    .line 325
    .local v0, "intents":[Landroid/content/Intent;
    new-instance v2, Landroid/content/Intent;

    aget-object v3, v0, v4

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v3, 0x1000c000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v0, v4

    .line 328
    iget-object v2, p0, Landroid/support/v4/app/bz;->d:Landroid/content/Context;

    invoke-static {v2, v0, p1}, Landroid/support/v4/content/d;->a(Landroid/content/Context;[Landroid/content/Intent;Landroid/os/Bundle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 329
    new-instance v1, Landroid/content/Intent;

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v0, v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 330
    .local v1, "topIntent":Landroid/content/Intent;
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 331
    iget-object v2, p0, Landroid/support/v4/app/bz;->d:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 333
    .end local v1    # "topIntent":Landroid/content/Intent;
    :cond_1
    return-void
.end method

.method public b(I)Landroid/content/Intent;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 284
    iget-object v0, p0, Landroid/support/v4/app/bz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    return-object v0
.end method

.method public b(Landroid/content/Intent;)Landroid/support/v4/app/bz;
    .locals 2
    .param p1, "nextIntent"    # Landroid/content/Intent;

    .prologue
    .line 179
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 180
    .local v0, "target":Landroid/content/ComponentName;
    if-nez v0, :cond_0

    .line 181
    iget-object v1, p0, Landroid/support/v4/app/bz;->d:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    .line 183
    :cond_0
    if-eqz v0, :cond_1

    .line 184
    invoke-virtual {p0, v0}, Landroid/support/v4/app/bz;->a(Landroid/content/ComponentName;)Landroid/support/v4/app/bz;

    .line 186
    :cond_1
    invoke-virtual {p0, p1}, Landroid/support/v4/app/bz;->a(Landroid/content/Intent;)Landroid/support/v4/app/bz;

    .line 187
    return-object p0
.end method

.method public b()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v4/app/bz;->a(Landroid/os/Bundle;)V

    .line 305
    return-void
.end method

.method public c()[Landroid/content/Intent;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 385
    iget-object v2, p0, Landroid/support/v4/app/bz;->c:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v1, v2, [Landroid/content/Intent;

    .line 386
    .local v1, "intents":[Landroid/content/Intent;
    array-length v2, v1

    if-nez v2, :cond_1

    .line 394
    :cond_0
    return-object v1

    .line 388
    :cond_1
    new-instance v3, Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/v4/app/bz;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v2, 0x1000c000

    invoke-virtual {v3, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    aput-object v2, v1, v4

    .line 391
    const/4 v0, 0x1

    .local v0, "i":I
    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 392
    new-instance v3, Landroid/content/Intent;

    iget-object v2, p0, Landroid/support/v4/app/bz;->c:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    invoke-direct {v3, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    aput-object v3, v1, v0

    .line 391
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 292
    iget-object v0, p0, Landroid/support/v4/app/bz;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method
