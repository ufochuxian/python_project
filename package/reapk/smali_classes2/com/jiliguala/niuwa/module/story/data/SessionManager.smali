.class public Lcom/jiliguala/niuwa/module/story/data/SessionManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final KEY_ABTEST_PRICE_LATE_APRIL:Ljava/lang/String; = "Qm"

.field public static final KEY_ANGRY_MODE_MENU:Ljava/lang/String; = "aD"

.field public static final KEY_ANGRY_MODE_ORIENTATION:Ljava/lang/String; = "Xn"

.field public static final KEY_ANGRY_MODE_PROXIMITY:Ljava/lang/String; = "PP"

.field public static final KEY_ANGRY_MODE_SHAKE:Ljava/lang/String; = "lO"

.field public static final KEY_BADGE_TOUCHED:Ljava/lang/String; = "yr"

.field public static final KEY_BOOKSHELF_SORT:Ljava/lang/String; = "jQ"

.field private static final KEY_BOOK_OPEN_COUNT:Ljava/lang/String; = "Jp"

.field private static final KEY_BOOK_OPEN_COUNT_TODAY:Ljava/lang/String; = "nQ"

.field public static final KEY_COLLECTED_EMAIL:Ljava/lang/String; = "xP"

.field public static final KEY_COLLECT_EMAIL:Ljava/lang/String; = "fE"

.field public static final KEY_EVENT_QUEUE:Ljava/lang/String; = "iG"

.field private static final KEY_FIRST_USE_DATE:Ljava/lang/String; = "gZ"

.field public static final KEY_GCM_APP_VERSION:Ljava/lang/String; = "LZ"

.field public static final KEY_GCM_REGISTRATION_ID:Ljava/lang/String; = "mr"

.field static final KEY_INSTALLATION_REPORTED:Ljava/lang/String; = "uK"

.field private static final KEY_LAST_BOOK_OPEN:Ljava/lang/String; = "xE"

.field private static final KEY_LAST_READ_MIDPOINT:Ljava/lang/String; = "Ty"

.field private static final KEY_LAST_SESSION_START:Ljava/lang/String; = "Tm"

.field private static final KEY_LAST_SESSION_STOP:Ljava/lang/String; = "Ne"

.field public static final KEY_NOTIFICATIONS_ENABLED:Ljava/lang/String; = "bM"

.field public static final KEY_NOTIFICATIONS_OVERRIDE:Ljava/lang/String; = "Oq"

.field private static final KEY_OFFLINE_DISABLED:Ljava/lang/String; = "cF"

.field public static final KEY_OFFLINE_MANAGER_STORIES_FIXED:Ljava/lang/String; = "MQ"

.field private static final KEY_READ_MIDPOINT_COUNT:Ljava/lang/String; = "rA"

.field private static final KEY_READ_MIDPOINT_COUNT_TODAY:Ljava/lang/String; = "Bp"

.field public static final KEY_RECENT_STORIES:Ljava/lang/String; = "Ll"

.field public static final KEY_REMIND_ENJOYING:Ljava/lang/String; = "gi"

.field public static final KEY_RUN_ONCE:Ljava/lang/String; = "RO"

.field private static final KEY_SESSION_COUNT:Ljava/lang/String; = "Ud"

.field private static final KEY_SESSION_COUNT_TODAY:Ljava/lang/String; = "vR"

.field public static final KEY_SHOW_MAP_INSTRUCTION:Ljava/lang/String; = "EE"

.field static final KEY_SUBSCRIPTION_PROMO_CODE:Ljava/lang/String; = "mI"

.field static final KEY_SUBSCRIPTION_PROMO_EXPIRY:Ljava/lang/String; = "Cg"

.field static final KEY_SUBSCRIPTION_TEMP_EXPIRY:Ljava/lang/String; = "bt"

.field static final KEY_SUBSCRIPTION_TYPE:Ljava/lang/String; = "Tc"

.field public static final KEY_SUBSCRIPTION_WEB_EXPIRY:Ljava/lang/String; = "Sx"

.field public static final KEY_USER_EMAIL:Ljava/lang/String; = "MM"

.field public static final KEY_USER_PASSWORD:Ljava/lang/String; = "rR"

.field private static final PREFERENCES_STORE_NAME:Ljava/lang/String; = "session"

.field private static final TAG:Ljava/lang/String; = "SessionManager"


# instance fields
.field private final mApplication:Lcom/jiliguala/niuwa/MyApplication;

.field private final mStore:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lcom/jiliguala/niuwa/MyApplication;)V
    .locals 1
    .param p1, "application"    # Lcom/jiliguala/niuwa/MyApplication;

    .prologue
    .line 102
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 103
    invoke-static {p1}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getStore(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->mStore:Landroid/content/SharedPreferences;

    .line 104
    iput-object p1, p0, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    .line 105
    return-void
.end method

.method private getCountIfDateToday(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "countKey"    # Ljava/lang/String;
    .param p2, "dateKey"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 161
    invoke-direct {p0, p2}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getDateForKey(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 162
    .local v0, "date":Lorg/joda/time/DateTime;
    if-eqz v0, :cond_0

    invoke-static {}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->startOfToday()Lorg/joda/time/DateTime;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/joda/time/DateTime;->isBefore(Lorg/joda/time/l;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 165
    :cond_0
    :goto_0
    return v1

    :cond_1
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->mStore:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    goto :goto_0
.end method

.method private getDateForKey(Ljava/lang/String;)Lorg/joda/time/DateTime;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    const-wide/16 v4, 0x0

    .line 146
    iget-object v2, p0, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->mStore:Landroid/content/SharedPreferences;

    invoke-interface {v2, p1, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 147
    .local v0, "millis":J
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 148
    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2, v0, v1}, Lorg/joda/time/DateTime;-><init>(J)V

    .line 150
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getStore(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 117
    const-string v0, "session"

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static startOfToday()Lorg/joda/time/DateTime;
    .locals 1

    .prologue
    .line 113
    new-instance v0, Lorg/joda/time/DateTime;

    invoke-direct {v0}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v0}, Lorg/joda/time/DateTime;->withTimeAtStartOfDay()Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBookOpenCount()I
    .locals 3

    .prologue
    .line 121
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->mStore:Landroid/content/SharedPreferences;

    const-string v1, "Jp"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getBookOpenCountToday()I
    .locals 2

    .prologue
    .line 133
    const-string v0, "nQ"

    const-string v1, "xE"

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getCountIfDateToday(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getFirstUseDate()Lorg/joda/time/DateTime;
    .locals 4
    .annotation build Lorg/b/a/d;
    .end annotation

    .prologue
    .line 257
    const-string v1, "gZ"

    invoke-direct {p0, v1}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getDateForKey(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v0

    .line 258
    .local v0, "dt":Lorg/joda/time/DateTime;
    if-nez v0, :cond_0

    .line 259
    new-instance v0, Lorg/joda/time/DateTime;

    .end local v0    # "dt":Lorg/joda/time/DateTime;
    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Lorg/joda/time/DateTime;-><init>(J)V

    .line 262
    :cond_0
    return-object v0
.end method

.method public getReadMidpointCount()I
    .locals 3

    .prologue
    .line 125
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->mStore:Landroid/content/SharedPreferences;

    const-string v1, "rA"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getReadMidpointCountToday()I
    .locals 2

    .prologue
    .line 137
    const-string v0, "Bp"

    const-string v1, "Ty"

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getCountIfDateToday(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSessionCount()I
    .locals 3

    .prologue
    .line 129
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->mStore:Landroid/content/SharedPreferences;

    const-string v1, "Ud"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getSessionCountToday()I
    .locals 2

    .prologue
    .line 141
    const-string v0, "vR"

    const-string v1, "Tm"

    invoke-direct {p0, v0, v1}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getCountIfDateToday(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getSessionStarted()Lorg/joda/time/DateTime;
    .locals 1
    .annotation build Landroid/support/annotation/aa;
    .end annotation

    .prologue
    .line 252
    const-string v0, "Tm"

    invoke-direct {p0, v0}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getDateForKey(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v0

    return-object v0
.end method

.method public incrementBookOpenCount()V
    .locals 4

    .prologue
    .line 235
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->mStore:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 236
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Jp"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getBookOpenCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 237
    const-string v1, "nQ"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getBookOpenCountToday()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 238
    const-string v1, "xE"

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 239
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 240
    return-void
.end method

.method public incrementMidpointCount()V
    .locals 4

    .prologue
    .line 243
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->mStore:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 244
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "rA"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getReadMidpointCount()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 245
    const-string v1, "Bp"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getReadMidpointCountToday()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 246
    const-string v1, "Ty"

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 247
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 248
    return-void
.end method

.method public isOfflineDisabled()Z
    .locals 3

    .prologue
    .line 272
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->mStore:Landroid/content/SharedPreferences;

    const-string v1, "cF"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public resetBookCounters()V
    .locals 2

    .prologue
    .line 282
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->mStore:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 283
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Jp"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 284
    const-string v1, "nQ"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 285
    const-string v1, "xE"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 286
    const-string v1, "rA"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 287
    const-string v1, "Bp"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 288
    const-string v1, "Ty"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 289
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 290
    return-void
.end method

.method public resetSessionCounters()V
    .locals 2

    .prologue
    .line 293
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->mStore:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 294
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Ud"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 295
    const-string v1, "vR"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 296
    const-string v1, "Tm"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 297
    const-string v1, "Ne"

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 298
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 299
    return-void
.end method

.method public resetStore()V
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->mStore:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 303
    return-void
.end method

.method public setFirstUseDate(Lorg/joda/time/DateTime;)V
    .locals 4
    .param p1, "firstUse"    # Lorg/joda/time/DateTime;
        .annotation build Lorg/b/a/d;
        .end annotation
    .end param

    .prologue
    .line 266
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->mStore:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 267
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "gZ"

    invoke-virtual {p1}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 268
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 269
    return-void
.end method

.method public setOfflineDisabled(Z)V
    .locals 2
    .param p1, "disabled"    # Z

    .prologue
    .line 276
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->mStore:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 277
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "cF"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 278
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 279
    return-void
.end method

.method public startSession()V
    .locals 8

    .prologue
    .line 172
    const-string v3, "Ne"

    invoke-direct {p0, v3}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getDateForKey(Ljava/lang/String;)Lorg/joda/time/DateTime;

    move-result-object v2

    .line 173
    .local v2, "lastSessionStop":Lorg/joda/time/DateTime;
    if-eqz v2, :cond_0

    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    const/16 v6, 0xf

    invoke-virtual {v3, v6}, Lorg/joda/time/DateTime;->minusMinutes(I)Lorg/joda/time/DateTime;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/joda/time/DateTime;->isAfter(Lorg/joda/time/l;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    :goto_0
    return-void

    .line 181
    :cond_0
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getSessionCount()I

    move-result v0

    .line 182
    .local v0, "currentSessionCount":I
    new-instance v3, Lorg/joda/time/DateTime;

    invoke-direct {v3}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v3}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v4

    .line 184
    .local v4, "now":J
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->mStore:Landroid/content/SharedPreferences;

    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 186
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    if-nez v0, :cond_2

    .line 189
    const-string v3, "gZ"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 200
    :cond_1
    :goto_1
    const-string v3, "Ud"

    add-int/lit8 v6, v0, 0x1

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 201
    const-string v3, "vR"

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getSessionCountToday()I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-interface {v1, v3, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 202
    const-string v3, "Tm"

    invoke-interface {v1, v3, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 204
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 206
    sget-object v3, Lcom/jiliguala/niuwa/module/story/data/Analytics;->INSTANCE:Lcom/jiliguala/niuwa/module/story/data/Analytics;

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getSessionCount()I

    move-result v6

    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getSessionCountToday()I

    move-result v7

    invoke-virtual {v3, v6, v7}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->updateSessionCounts(II)V

    .line 207
    sget-object v3, Lcom/jiliguala/niuwa/module/story/data/Analytics;->INSTANCE:Lcom/jiliguala/niuwa/module/story/data/Analytics;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/module/story/data/Analytics;->trackAppOpened()V

    .line 209
    iget-object v3, p0, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v3}, Lcom/jiliguala/niuwa/MyApplication;->getOnceManager()Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;

    move-result-object v3

    const-string v6, "831809E9-D843-4251-8093-288B0CC82F9F"

    new-instance v7, Lcom/jiliguala/niuwa/module/story/data/SessionManager$1;

    invoke-direct {v7, p0}, Lcom/jiliguala/niuwa/module/story/data/SessionManager$1;-><init>(Lcom/jiliguala/niuwa/module/story/data/SessionManager;)V

    invoke-virtual {v3, v6, v7}, Lcom/jiliguala/niuwa/module/story/helpers/OnceManager;->runOnceOnFirstLaunchOnly(Ljava/lang/String;Ljava/lang/Runnable;)V

    goto :goto_0

    .line 195
    :cond_2
    invoke-virtual {p0}, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->getFirstUseDate()Lorg/joda/time/DateTime;

    move-result-object v3

    if-nez v3, :cond_1

    .line 196
    const-string v3, "gZ"

    iget-object v6, p0, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->mApplication:Lcom/jiliguala/niuwa/MyApplication;

    invoke-virtual {v6}, Lcom/jiliguala/niuwa/MyApplication;->getInstallDate()Lorg/joda/time/DateTime;

    move-result-object v6

    invoke-virtual {v6}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v6

    invoke-interface {v1, v3, v6, v7}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1
.end method

.method public stopSession()V
    .locals 4

    .prologue
    .line 226
    iget-object v1, p0, Lcom/jiliguala/niuwa/module/story/data/SessionManager;->mStore:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 227
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v1, "Ne"

    new-instance v2, Lorg/joda/time/DateTime;

    invoke-direct {v2}, Lorg/joda/time/DateTime;-><init>()V

    invoke-virtual {v2}, Lorg/joda/time/DateTime;->getMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 228
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 229
    return-void
.end method
