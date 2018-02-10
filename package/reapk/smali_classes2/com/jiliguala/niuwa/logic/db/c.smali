.class public Lcom/jiliguala/niuwa/logic/db/c;
.super Lcom/jiliguala/niuwa/logic/db/daometa/b$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/jiliguala/niuwa/logic/db/c$c;,
        Lcom/jiliguala/niuwa/logic/db/c$b;,
        Lcom/jiliguala/niuwa/logic/db/c$a;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;

.field private static final b:I = 0x1

.field private static final c:I = 0x2

.field private static final d:I = 0x3

.field private static final e:I = 0x4

.field private static final f:I = 0x5

.field private static final g:I = 0x6


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/jiliguala/niuwa/logic/db/c;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/jiliguala/niuwa/logic/db/c;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "factory"    # Landroid/database/sqlite/SQLiteDatabase$CursorFactory;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2, p3}, Lcom/jiliguala/niuwa/logic/db/daometa/b$b;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;)V

    .line 43
    return-void
.end method


# virtual methods
.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .prologue
    const/4 v5, 0x5

    const/4 v4, 0x4

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 50
    if-gt p2, v1, :cond_0

    if-lt p3, v2, :cond_0

    .line 54
    sget-object v0, Lcom/jiliguala/niuwa/logic/db/c$a;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 55
    sget-object v0, Lcom/jiliguala/niuwa/logic/db/c$a;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 56
    sget-object v0, Lcom/jiliguala/niuwa/logic/db/c$a;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 58
    :cond_0
    if-gt p2, v2, :cond_1

    if-lt p3, v3, :cond_1

    .line 62
    sget-object v0, Lcom/jiliguala/niuwa/logic/db/c$b;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 64
    :cond_1
    if-gt p2, v3, :cond_2

    if-lt p3, v4, :cond_2

    .line 68
    sget-object v0, Lcom/jiliguala/niuwa/logic/db/c$c;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 69
    sget-object v0, Lcom/jiliguala/niuwa/logic/db/c$c;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 71
    :cond_2
    if-gt p2, v4, :cond_3

    if-lt p3, v5, :cond_3

    .line 72
    invoke-static {p1, v1}, Lcom/jiliguala/niuwa/logic/db/daometa/SplashRecordDao;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 74
    :cond_3
    if-gt p2, v5, :cond_4

    const/4 v0, 0x6

    if-lt p3, v0, :cond_4

    .line 75
    invoke-static {p1, v1}, Lcom/jiliguala/niuwa/logic/db/daometa/PlayRecordDao;->a(Landroid/database/sqlite/SQLiteDatabase;Z)V

    .line 77
    :cond_4
    return-void
.end method
