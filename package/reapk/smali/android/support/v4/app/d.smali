.class public Landroid/support/v4/app/d;
.super Landroid/support/v4/content/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/d$c;,
        Landroid/support/v4/app/d$b;,
        Landroid/support/v4/app/d$a;
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Landroid/support/v4/content/d;-><init>()V

    .line 81
    return-void
.end method

.method private static a(Landroid/support/v4/app/bx;)Landroid/support/v4/app/e$a;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/app/bx;

    .prologue
    .line 426
    const/4 v0, 0x0

    .line 427
    .local v0, "newCallback":Landroid/support/v4/app/e$a;
    if-eqz p0, :cond_0

    .line 428
    new-instance v0, Landroid/support/v4/app/d$b;

    .end local v0    # "newCallback":Landroid/support/v4/app/e$a;
    invoke-direct {v0, p0}, Landroid/support/v4/app/d$b;-><init>(Landroid/support/v4/app/bx;)V

    .line 430
    .restart local v0    # "newCallback":Landroid/support/v4/app/e$a;
    :cond_0
    return-object v0
.end method

.method public static a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "requestCode"    # I
    .param p3, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param

    .prologue
    .line 145
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 146
    invoke-static {p0, p1, p2, p3}, Landroid/support/v4/app/i;->a(Landroid/app/Activity;Landroid/content/Intent;ILandroid/os/Bundle;)V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "intent"    # Landroid/content/IntentSender;
    .param p2, "requestCode"    # I
    .param p3, "fillInIntent"    # Landroid/content/Intent;
    .param p4, "flagsMask"    # I
    .param p5, "flagsValues"    # I
    .param p6, "extraFlags"    # I
    .param p7, "options"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/aa;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/IntentSender$SendIntentException;
        }
    .end annotation

    .prologue
    .line 181
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 182
    invoke-static/range {p0 .. p7}, Landroid/support/v4/app/i;->a(Landroid/app/Activity;Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V

    .line 188
    :goto_0
    return-void

    .line 185
    :cond_0
    invoke-virtual/range {p0 .. p6}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Landroid/support/v4/app/bx;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/support/v4/app/bx;

    .prologue
    .line 265
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 266
    invoke-static {p1}, Landroid/support/v4/app/d;->b(Landroid/support/v4/app/bx;)Landroid/support/v4/app/g$c;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/g;->a(Landroid/app/Activity;Landroid/support/v4/app/g$c;)V

    .line 270
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 268
    invoke-static {p1}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/bx;)Landroid/support/v4/app/e$a;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/e;->a(Landroid/app/Activity;Landroid/support/v4/app/e$a;)V

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;[Ljava/lang/String;I)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "permissions"    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "requestCode"    # I
        .annotation build Landroid/support/annotation/t;
            a = 0x0L
        .end annotation
    .end param

    .prologue
    .line 371
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_1

    .line 372
    invoke-static {p0, p1, p2}, Landroid/support/v4/app/g;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 394
    :cond_0
    :goto_0
    return-void

    .line 373
    :cond_1
    instance-of v1, p0, Landroid/support/v4/app/d$a;

    if-eqz v1, :cond_0

    .line 374
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 375
    .local v0, "handler":Landroid/os/Handler;
    new-instance v1, Landroid/support/v4/app/d$1;

    invoke-direct {v1, p1, p0, p2}, Landroid/support/v4/app/d$1;-><init>([Ljava/lang/String;Landroid/app/Activity;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 116
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 117
    invoke-static {p0}, Landroid/support/v4/app/h;->a(Landroid/app/Activity;)V

    .line 118
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static a(Landroid/app/Activity;Ljava/lang/String;)Z
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p1, "permission"    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param

    .prologue
    .line 418
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    .line 419
    invoke-static {p0, p1}, Landroid/support/v4/app/g;->a(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result v0

    .line 421
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static b(Landroid/support/v4/app/bx;)Landroid/support/v4/app/g$c;
    .locals 1
    .param p0, "callback"    # Landroid/support/v4/app/bx;

    .prologue
    .line 435
    const/4 v0, 0x0

    .line 436
    .local v0, "newCallback":Landroid/support/v4/app/g$c;
    if-eqz p0, :cond_0

    .line 437
    new-instance v0, Landroid/support/v4/app/d$c;

    .end local v0    # "newCallback":Landroid/support/v4/app/g$c;
    invoke-direct {v0, p0}, Landroid/support/v4/app/d$c;-><init>(Landroid/support/v4/app/bx;)V

    .line 439
    .restart local v0    # "newCallback":Landroid/support/v4/app/g$c;
    :cond_0
    return-object v0
.end method

.method public static b(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 198
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 199
    invoke-static {p0}, Landroid/support/v4/app/i;->a(Landroid/app/Activity;)V

    .line 203
    :goto_0
    return-void

    .line 201
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static b(Landroid/app/Activity;Landroid/support/v4/app/bx;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "callback"    # Landroid/support/v4/app/bx;

    .prologue
    .line 283
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_1

    .line 284
    invoke-static {p1}, Landroid/support/v4/app/d;->b(Landroid/support/v4/app/bx;)Landroid/support/v4/app/g$c;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/g;->b(Landroid/app/Activity;Landroid/support/v4/app/g$c;)V

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 285
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 286
    invoke-static {p1}, Landroid/support/v4/app/d;->a(Landroid/support/v4/app/bx;)Landroid/support/v4/app/e$a;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/support/v4/app/e;->b(Landroid/app/Activity;Landroid/support/v4/app/e$a;)V

    goto :goto_0
.end method

.method public static c(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 215
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 216
    invoke-static {p0}, Landroid/support/v4/app/e;->a(Landroid/app/Activity;)V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public static d(Landroid/app/Activity;)Landroid/net/Uri;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 240
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x16

    if-lt v3, v4, :cond_1

    .line 241
    invoke-static {p0}, Landroid/support/v4/app/f;->a(Landroid/app/Activity;)Landroid/net/Uri;

    move-result-object v1

    .line 252
    :cond_0
    :goto_0
    return-object v1

    .line 243
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 244
    .local v0, "intent":Landroid/content/Intent;
    const-string v3, "android.intent.extra.REFERRER"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    .line 245
    .local v1, "referrer":Landroid/net/Uri;
    if-nez v1, :cond_0

    .line 248
    const-string v3, "android.intent.extra.REFERRER_NAME"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .local v2, "referrerName":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 250
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 252
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static e(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 291
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 292
    invoke-static {p0}, Landroid/support/v4/app/e;->b(Landroid/app/Activity;)V

    .line 294
    :cond_0
    return-void
.end method

.method public static f(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 297
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 298
    invoke-static {p0}, Landroid/support/v4/app/e;->c(Landroid/app/Activity;)V

    .line 300
    :cond_0
    return-void
.end method