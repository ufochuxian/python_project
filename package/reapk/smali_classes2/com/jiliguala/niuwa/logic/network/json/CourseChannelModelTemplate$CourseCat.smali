.class public Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CourseCat"
.end annotation


# instance fields
.field public age:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseAge;",
            ">;"
        }
    .end annotation
.end field

.field public cat:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public sel:Z

.field public thmb:Ljava/lang/String;

.field public ttl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/CourseChannelModelTemplate$CourseCat;->age:Ljava/util/ArrayList;

    return-void
.end method
