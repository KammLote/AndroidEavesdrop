.class public final Lcom/google/android/gms/internal/zzbin;
.super Ljava/lang/Object;


# instance fields
.field private final zzaKP:Lcom/google/android/gms/internal/abz;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/abz;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/common/internal/zzbo;->zzu(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/abz;

    iput-object v0, p0, Lcom/google/android/gms/internal/zzbin;->zzaKP:Lcom/google/android/gms/internal/abz;

    return-void
.end method

.method private static zza(IJI)Lcom/google/android/gms/internal/abz;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/abz;

    invoke-direct {v0}, Lcom/google/android/gms/internal/abz;-><init>()V

    iput p0, v0, Lcom/google/android/gms/internal/abz;->zzcqb:I

    iput-wide p1, v0, Lcom/google/android/gms/internal/abz;->zzcqc:J

    packed-switch p0, :pswitch_data_0

    const-string v1, "AudioStateFenceStub"

    const-string v2, "Unknown trigger type=%s"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lcom/google/android/gms/internal/zzeq;->zza(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    :goto_0
    return-object v0

    :pswitch_0
    iput p3, v0, Lcom/google/android/gms/internal/abz;->zzcqe:I

    goto :goto_0

    :pswitch_1
    iput p3, v0, Lcom/google/android/gms/internal/abz;->zzcqf:I

    goto :goto_0

    :pswitch_2
    iput p3, v0, Lcom/google/android/gms/internal/abz;->zzcqg:I

    goto :goto_0

    :pswitch_3
    iput p3, v0, Lcom/google/android/gms/internal/abz;->zzcqh:I

    goto :goto_0

    :pswitch_4
    iput p3, v0, Lcom/google/android/gms/internal/abz;->zzcqi:I

    goto :goto_0

    :pswitch_5
    iput p3, v0, Lcom/google/android/gms/internal/abz;->zzcqj:I

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method public static zzaJ(I)Lcom/google/android/gms/internal/zzbin;
    .locals 4

    new-instance v0, Lcom/google/android/gms/internal/zzbin;

    const/4 v1, 0x1

    const-wide/16 v2, 0x0

    invoke-static {v1, v2, v3, p0}, Lcom/google/android/gms/internal/zzbin;->zza(IJI)Lcom/google/android/gms/internal/abz;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbin;-><init>(Lcom/google/android/gms/internal/abz;)V

    return-object v0
.end method

.method public static zzsC()Lcom/google/android/gms/internal/zzbin;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzbin;

    const/4 v1, 0x2

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbin;->zza(IJI)Lcom/google/android/gms/internal/abz;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbin;-><init>(Lcom/google/android/gms/internal/abz;)V

    return-object v0
.end method

.method public static zzsD()Lcom/google/android/gms/internal/zzbin;
    .locals 5

    new-instance v0, Lcom/google/android/gms/internal/zzbin;

    const/4 v1, 0x3

    const-wide/16 v2, 0xbb8

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Lcom/google/android/gms/internal/zzbin;->zza(IJI)Lcom/google/android/gms/internal/abz;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/zzbin;-><init>(Lcom/google/android/gms/internal/abz;)V

    return-object v0
.end method


# virtual methods
.method public final zzsE()Lcom/google/android/gms/internal/abz;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/zzbin;->zzaKP:Lcom/google/android/gms/internal/abz;

    return-object v0
.end method
