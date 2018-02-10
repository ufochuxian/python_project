.class public final Lcom/jiliguala/niuwa/logic/downloader/cons/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/downloader/cons/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final a:Ljava/lang/String; = "task_info"

.field public static final b:Ljava/lang/String; = "base_url"

.field public static final c:Ljava/lang/String; = "real_url"

.field public static final d:Ljava/lang/String; = "file_path"

.field public static final e:Ljava/lang/String; = "onThreadProgress"

.field public static final f:Ljava/lang/String; = "file_length"

.field public static final g:Ljava/lang/String; = "thread_info"

.field public static final h:Ljava/lang/String; = "base_url"

.field public static final i:Ljava/lang/String; = "real_url"

.field public static final j:Ljava/lang/String; = "file_path"

.field public static final k:Ljava/lang/String; = "start"

.field public static final l:Ljava/lang/String; = "end"

.field public static final m:Ljava/lang/String; = "id"

.field public static final n:Ljava/lang/String; = "CREATE TABLE task_info(_id INTEGER PRIMARY KEY AUTOINCREMENT, base_url CHAR, real_url CHAR, file_path CHAR, onThreadProgress INTEGER, file_length INTEGER)"

.field public static final o:Ljava/lang/String; = "CREATE TABLE thread_info(_id INTEGER PRIMARY KEY AUTOINCREMENT, base_url CHAR, real_url CHAR, file_path CHAR, start INTEGER, end INTEGER, id CHAR)"

.field public static final p:Ljava/lang/String; = "DROP TABLE IF EXISTS task_info"

.field public static final q:Ljava/lang/String; = "DROP TABLE IF EXISTS thread_info"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
