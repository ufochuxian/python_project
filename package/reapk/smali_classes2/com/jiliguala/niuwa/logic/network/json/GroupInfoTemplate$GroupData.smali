.class public Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GroupData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _id:Ljava/lang/String;

.field public active0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate;",
            ">;"
        }
    .end annotation
.end field

.field public active0rate:F

.field public active0txt:Ljava/lang/String;

.field public active7:F

.field public active7detail:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public active7txt:Ljava/lang/String;

.field public age:Lcom/jiliguala/niuwa/logic/network/json/GroupAgeTemplate;

.field public ava:Ljava/lang/String;

.field public bg:Ljava/lang/String;

.field public code:Ljava/lang/String;

.field public cts:Ljava/lang/String;

.field public desc:Ljava/lang/String;

.field public done7:I

.field public done7detail:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public done7txt:Ljava/lang/String;

.field public full:Z

.field public learn0:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate;",
            ">;"
        }
    .end annotation
.end field

.field public learn0rate:F

.field public learn0txt:Ljava/lang/String;

.field public learn7:F

.field public learn7detail:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public learn7txt:Ljava/lang/String;

.field public max:I

.field public maxage:I

.field public members:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;",
            ">;"
        }
    .end annotation
.end field

.field public memberscount:I

.field public minage:I

.field public owner:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

.field public rec:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate;",
            ">;"
        }
    .end annotation
.end field

.field public task:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

.field public title:Ljava/lang/String;

.field public uid:Ljava/lang/String;

.field public verifycode:Z

.field public weekts:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    new-instance v0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData$1;

    invoke-direct {v0}, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData$1;-><init>()V

    sput-object v0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->rec:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->learn7detail:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->active0:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->active7detail:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->members:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->learn0:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->done7detail:Ljava/util/HashMap;

    .line 78
    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->rec:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->learn7detail:Ljava/util/HashMap;

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->active0:Ljava/util/ArrayList;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->active7detail:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->members:Ljava/util/ArrayList;

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->learn0:Ljava/util/ArrayList;

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->done7detail:Ljava/util/HashMap;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->_id:Ljava/lang/String;

    .line 82
    const-class v0, Lcom/jiliguala/niuwa/logic/network/json/GroupAgeTemplate;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/GroupAgeTemplate;

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->age:Lcom/jiliguala/niuwa/logic/network/json/GroupAgeTemplate;

    .line 83
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->desc:Ljava/lang/String;

    .line 84
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->uid:Ljava/lang/String;

    .line 85
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->learn0rate:F

    .line 86
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->active0rate:F

    .line 87
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->done7:I

    .line 88
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->rec:Ljava/util/ArrayList;

    sget-object v3, Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 89
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->active7:F

    .line 90
    const-class v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->learn7detail:Ljava/util/HashMap;

    .line 91
    const-class v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->task:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->cts:Ljava/lang/String;

    .line 93
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->active0:Ljava/util/ArrayList;

    sget-object v3, Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->title:Ljava/lang/String;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->max:I

    .line 96
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->weekts:Ljava/lang/String;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->ava:Ljava/lang/String;

    .line 98
    const-class v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->active7detail:Ljava/util/HashMap;

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->maxage:I

    .line 100
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->members:Ljava/util/ArrayList;

    sget-object v3, Lcom/jiliguala/niuwa/logic/network/json/GroupMemberTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->minage:I

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->bg:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->learn0:Ljava/util/ArrayList;

    sget-object v3, Lcom/jiliguala/niuwa/logic/network/json/GroupRecTemplate;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v0, v3}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->learn7:F

    .line 105
    const-class v0, Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readHashMap(Ljava/lang/ClassLoader;)Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->done7detail:Ljava/util/HashMap;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->full:Z

    .line 107
    const-class v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->owner:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    .line 108
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->active0txt:Ljava/lang/String;

    .line 109
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->learn0txt:Ljava/lang/String;

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->active7txt:Ljava/lang/String;

    .line 111
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->learn7txt:Ljava/lang/String;

    .line 112
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->done7txt:Ljava/lang/String;

    .line 113
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    iput-boolean v2, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->verifycode:Z

    .line 114
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->code:Ljava/lang/String;

    .line 115
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->memberscount:I

    .line 116
    return-void

    :cond_0
    move v0, v2

    .line 106
    goto :goto_0

    :cond_1
    move v2, v1

    .line 113
    goto :goto_1
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 141
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 127
    instance-of v1, p1, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;

    if-nez v1, :cond_0

    .line 128
    const/4 v1, 0x0

    .line 134
    :goto_0
    return v1

    .line 129
    :cond_0
    if-ne p1, p0, :cond_1

    .line 130
    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move-object v0, p1

    .line 132
    check-cast v0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;

    .line 134
    .local v0, "rhs":Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;
    new-instance v1, Lorg/apache/commons/lang3/builder/EqualsBuilder;

    invoke-direct {v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;-><init>()V

    iget-object v2, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->_id:Ljava/lang/String;

    iget-object v3, v0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->_id:Ljava/lang/String;

    .line 136
    invoke-virtual {v1, v2, v3}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->append(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/EqualsBuilder;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/lang3/builder/EqualsBuilder;->isEquals()Z

    move-result v1

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 120
    new-instance v0, Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    const/16 v1, 0x11

    const/16 v2, 0x1f

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;-><init>(II)V

    iget-object v1, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->_id:Ljava/lang/String;

    .line 122
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->append(Ljava/lang/Object;)Lorg/apache/commons/lang3/builder/HashCodeBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/apache/commons/lang3/builder/HashCodeBuilder;->toHashCode()I

    move-result v0

    .line 120
    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
        .annotation build Landroid/support/annotation/z;
        .end annotation
    .end param
    .param p2, "flags"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->_id:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 147
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->age:Lcom/jiliguala/niuwa/logic/network/json/GroupAgeTemplate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 148
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->desc:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 149
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->uid:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 150
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->learn0rate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 151
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->active0rate:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 152
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->done7:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->rec:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 154
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->active7:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 155
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->learn7detail:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 156
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->task:Lcom/jiliguala/niuwa/logic/network/json/CourseTemplate;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 157
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->cts:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 158
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->active0:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 159
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 160
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->max:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->weekts:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 162
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->ava:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 163
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->active7detail:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 164
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->maxage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->members:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 166
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->minage:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->bg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 168
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->learn0:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 170
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->learn7:F

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeFloat(F)V

    .line 171
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->done7detail:Ljava/util/HashMap;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeMap(Ljava/util/Map;)V

    .line 172
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->full:Z

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 173
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->owner:Lcom/jiliguala/niuwa/logic/network/json/UserInfoTemplate$UserData;

    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 174
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->active0txt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 175
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->learn0txt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 176
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->active7txt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 177
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->learn7txt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 178
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->done7txt:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 179
    iget-boolean v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->verifycode:Z

    if-eqz v0, :cond_1

    :goto_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 180
    iget-object v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->code:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 181
    iget v0, p0, Lcom/jiliguala/niuwa/logic/network/json/GroupInfoTemplate$GroupData;->memberscount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 182
    return-void

    :cond_0
    move v0, v2

    .line 172
    goto :goto_0

    :cond_1
    move v1, v2

    .line 179
    goto :goto_1
.end method
