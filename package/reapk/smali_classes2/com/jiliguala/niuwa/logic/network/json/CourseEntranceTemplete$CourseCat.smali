.class public Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CourseCat"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x7f6119c50c2b4455L


# instance fields
.field public age:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/Age;",
            ">;"
        }
    .end annotation
.end field

.field public bicon:Ljava/lang/String;

.field public cat:Ljava/lang/String;

.field public courseid:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public icon:Ljava/lang/String;

.field public target:Ljava/lang/String;

.field public thmb:Ljava/lang/String;

.field public ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isLesson()Z
    .locals 2

    .prologue
    .line 64
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->target:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->target:Ljava/lang/String;

    const-string v1, "JLGL://lessons"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isStoryLesson()Z
    .locals 2

    .prologue
    .line 60
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->target:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseEntranceTemplete$CourseCat;->target:Ljava/lang/String;

    const-string v1, "JLGL://story_lessons"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
