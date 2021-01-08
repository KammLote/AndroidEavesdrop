.class final Lcom/google/android/gms/internal/rs;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/google/android/gms/internal/rs;",
        ">;"
    }
.end annotation


# instance fields
.field private retryCount:I

.field private zzbZi:Lcom/google/android/gms/internal/qo;

.field private zzcdZ:Lcom/google/firebase/database/Transaction$Handler;

.field private zzcea:Lcom/google/firebase/database/ValueEventListener;

.field private zzceb:I

.field private zzcec:J

.field private zzced:Z

.field private zzcee:Lcom/google/firebase/database/DatabaseError;

.field private zzcef:J

.field private zzceg:Lcom/google/android/gms/internal/xf;

.field private zzceh:Lcom/google/android/gms/internal/xf;

.field private zzcei:Lcom/google/android/gms/internal/xf;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/qo;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;IZJ)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/rs;->zzbZi:Lcom/google/android/gms/internal/qo;

    iput-object p2, p0, Lcom/google/android/gms/internal/rs;->zzcdZ:Lcom/google/firebase/database/Transaction$Handler;

    iput-object p3, p0, Lcom/google/android/gms/internal/rs;->zzcea:Lcom/google/firebase/database/ValueEventListener;

    iput p4, p0, Lcom/google/android/gms/internal/rs;->zzceb:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/android/gms/internal/rs;->retryCount:I

    iput-boolean p5, p0, Lcom/google/android/gms/internal/rs;->zzced:Z

    iput-wide p6, p0, Lcom/google/android/gms/internal/rs;->zzcec:J

    iput-object v1, p0, Lcom/google/android/gms/internal/rs;->zzcee:Lcom/google/firebase/database/DatabaseError;

    iput-object v1, p0, Lcom/google/android/gms/internal/rs;->zzceg:Lcom/google/android/gms/internal/xf;

    iput-object v1, p0, Lcom/google/android/gms/internal/rs;->zzceh:Lcom/google/android/gms/internal/xf;

    iput-object v1, p0, Lcom/google/android/gms/internal/rs;->zzcei:Lcom/google/android/gms/internal/xf;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/qo;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;IZJLcom/google/android/gms/internal/qs;)V
    .locals 0

    invoke-direct/range {p0 .. p7}, Lcom/google/android/gms/internal/rs;-><init>(Lcom/google/android/gms/internal/qo;Lcom/google/firebase/database/Transaction$Handler;Lcom/google/firebase/database/ValueEventListener;IZJ)V

    return-void
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/rs;I)I
    .locals 0

    iput p1, p0, Lcom/google/android/gms/internal/rs;->zzceb:I

    return p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/rs;J)J
    .locals 1

    iput-wide p1, p0, Lcom/google/android/gms/internal/rs;->zzcef:J

    return-wide p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/rs;)Lcom/google/android/gms/internal/xf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rs;->zzceg:Lcom/google/android/gms/internal/xf;

    return-object v0
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/rs;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rs;->zzceg:Lcom/google/android/gms/internal/xf;

    return-object p1
.end method

.method static synthetic zza(Lcom/google/android/gms/internal/rs;Lcom/google/firebase/database/DatabaseError;)Lcom/google/firebase/database/DatabaseError;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rs;->zzcee:Lcom/google/firebase/database/DatabaseError;

    return-object p1
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/rs;)J
    .locals 2

    iget-wide v0, p0, Lcom/google/android/gms/internal/rs;->zzcef:J

    return-wide v0
.end method

.method static synthetic zzb(Lcom/google/android/gms/internal/rs;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rs;->zzceh:Lcom/google/android/gms/internal/xf;

    return-object p1
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/rs;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/rs;->zzceb:I

    return v0
.end method

.method static synthetic zzc(Lcom/google/android/gms/internal/rs;Lcom/google/android/gms/internal/xf;)Lcom/google/android/gms/internal/xf;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/rs;->zzcei:Lcom/google/android/gms/internal/xf;

    return-object p1
.end method

.method static synthetic zzd(Lcom/google/android/gms/internal/rs;)I
    .locals 2

    iget v0, p0, Lcom/google/android/gms/internal/rs;->retryCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/android/gms/internal/rs;->retryCount:I

    return v0
.end method

.method static synthetic zze(Lcom/google/android/gms/internal/rs;)Lcom/google/android/gms/internal/qo;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rs;->zzbZi:Lcom/google/android/gms/internal/qo;

    return-object v0
.end method

.method static synthetic zzf(Lcom/google/android/gms/internal/rs;)Lcom/google/android/gms/internal/xf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rs;->zzceh:Lcom/google/android/gms/internal/xf;

    return-object v0
.end method

.method static synthetic zzg(Lcom/google/android/gms/internal/rs;)Lcom/google/android/gms/internal/xf;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rs;->zzcei:Lcom/google/android/gms/internal/xf;

    return-object v0
.end method

.method static synthetic zzh(Lcom/google/android/gms/internal/rs;)Lcom/google/firebase/database/Transaction$Handler;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rs;->zzcdZ:Lcom/google/firebase/database/Transaction$Handler;

    return-object v0
.end method

.method static synthetic zzi(Lcom/google/android/gms/internal/rs;)Lcom/google/firebase/database/ValueEventListener;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rs;->zzcea:Lcom/google/firebase/database/ValueEventListener;

    return-object v0
.end method

.method static synthetic zzj(Lcom/google/android/gms/internal/rs;)Lcom/google/firebase/database/DatabaseError;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/rs;->zzcee:Lcom/google/firebase/database/DatabaseError;

    return-object v0
.end method

.method static synthetic zzk(Lcom/google/android/gms/internal/rs;)I
    .locals 1

    iget v0, p0, Lcom/google/android/gms/internal/rs;->retryCount:I

    return v0
.end method

.method static synthetic zzl(Lcom/google/android/gms/internal/rs;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/google/android/gms/internal/rs;->zzced:Z

    return v0
.end method


# virtual methods
.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 4

    check-cast p1, Lcom/google/android/gms/internal/rs;

    iget-wide v0, p0, Lcom/google/android/gms/internal/rs;->zzcec:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/rs;->zzcec:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Lcom/google/android/gms/internal/rs;->zzcec:J

    iget-wide v2, p1, Lcom/google/android/gms/internal/rs;->zzcec:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method
