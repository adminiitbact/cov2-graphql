CREATE FUNCTION public.set_current_timestamp_updated_at() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
DECLARE
  _new record;
BEGIN
  _new := NEW;
  _new."updated_at" = NOW();
  RETURN _new;
END;
$$;
CREATE TABLE public.area (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.area_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.area_id_seq OWNED BY public.area.id;
CREATE TABLE public.collection_center (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.collection_center_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.collection_center_id_seq OWNED BY public.collection_center.id;
CREATE TABLE public.covid_facility_type (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.covid_facility_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.covid_facility_type_id_seq OWNED BY public.covid_facility_type.id;
CREATE TABLE public.facility (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    address text NOT NULL,
    agreement_status integer NOT NULL,
    area integer NOT NULL,
    covid_facility_type integer NOT NULL,
    email text NOT NULL,
    facility_status integer NOT NULL,
    government_hospital integer NOT NULL,
    has_links integer NOT NULL,
    hospital_category integer NOT NULL,
    institution_type integer NOT NULL,
    is_fever_clinic_available boolean DEFAULT false NOT NULL,
    is_separate_entry_exit_available boolean DEFAULT false NOT NULL,
    jurisdiction integer NOT NULL,
    name text NOT NULL,
    telephone integer NOT NULL,
    ulb_ward_name text NOT NULL,
    ulb_zone_name text NOT NULL,
    assets jsonb DEFAULT jsonb_build_object() NOT NULL,
    checklist jsonb DEFAULT jsonb_build_object() NOT NULL,
    contacts jsonb DEFAULT jsonb_build_object() NOT NULL,
    region integer NOT NULL,
    staff jsonb DEFAULT jsonb_build_object() NOT NULL,
    inventory jsonb DEFAULT jsonb_build_object() NOT NULL
);
CREATE TABLE public.facility_agreement_status (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.facility_agreement_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.facility_agreement_status_id_seq OWNED BY public.facility_agreement_status.id;
CREATE SEQUENCE public.facility_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.facility_id_seq OWNED BY public.facility.id;
CREATE TABLE public.facility_status (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.facility_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.facility_status_id_seq OWNED BY public.facility_status.id;
CREATE TABLE public.gender (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.gender_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.gender_id_seq OWNED BY public.gender.id;
CREATE TABLE public.hospital_category (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.hospital_category_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.hospital_category_id_seq OWNED BY public.hospital_category.id;
CREATE TABLE public.institution_type (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.institution_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.institution_type_id_seq OWNED BY public.institution_type.id;
CREATE TABLE public.jurisdiction (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.jurisdiction_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.jurisdiction_id_seq OWNED BY public.jurisdiction.id;
CREATE TABLE public.lab (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.lab_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.lab_id_seq OWNED BY public.lab.id;
CREATE TABLE public.patient (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    address text NOT NULL,
    dob date NOT NULL,
    contact_number integer NOT NULL,
    district text NOT NULL,
    district_case_id text NOT NULL,
    emergency_contact jsonb,
    first_name text NOT NULL,
    gender integer NOT NULL,
    goi_covid_id text NOT NULL,
    hospital_patient_id text NOT NULL,
    last_name text NOT NULL,
    occupation text NOT NULL,
    state text NOT NULL,
    locality text NOT NULL,
    age integer NOT NULL,
    middle_name text
);
CREATE TABLE public.patient_clinical_history (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    onset_symptoms date NOT NULL,
    pre_existing_symptoms jsonb DEFAULT jsonb_build_object() NOT NULL,
    primary_symptoms jsonb DEFAULT jsonb_build_object() NOT NULL,
    secondary_symptoms jsonb DEFAULT jsonb_build_object() NOT NULL,
    symptoms_at_time_of_admission boolean DEFAULT false NOT NULL,
    patient integer NOT NULL
);
CREATE SEQUENCE public.patient_clinical_history_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.patient_clinical_history_id_seq OWNED BY public.patient_clinical_history.id;
CREATE TABLE public.patient_discharge (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    facility integer NOT NULL,
    patient integer NOT NULL,
    quarantine_type integer NOT NULL,
    ward integer NOT NULL,
    reason integer NOT NULL
);
CREATE SEQUENCE public.patient_discharge_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.patient_discharge_id_seq OWNED BY public.patient_discharge.id;
CREATE TABLE public.patient_discharge_reason (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.patient_discharge_reason_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.patient_discharge_reason_id_seq OWNED BY public.patient_discharge_reason.id;
CREATE SEQUENCE public.patient_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.patient_id_seq OWNED BY public.patient.id;
CREATE TABLE public.patient_test_detail (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    collection_center integer NOT NULL,
    collection_date date NOT NULL,
    lab_confirming integer NOT NULL,
    patient integer NOT NULL,
    result integer NOT NULL,
    result_available boolean DEFAULT false NOT NULL,
    sample_collected boolean DEFAULT false NOT NULL,
    sent_to integer NOT NULL,
    sample_type text NOT NULL,
    result_date date
);
CREATE SEQUENCE public.patient_test_detail_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.patient_test_detail_id_seq OWNED BY public.patient_test_detail.id;
CREATE TABLE public.quarantine_type (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.quarantine_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.quarantine_type_id_seq OWNED BY public.quarantine_type.id;
CREATE TABLE public.region (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.region_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.region_id_seq OWNED BY public.region.id;
CREATE TABLE public.severity (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.severity_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.severity_id_seq OWNED BY public.severity.id;
CREATE TABLE public.test_result_status (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    name text NOT NULL
);
CREATE SEQUENCE public.test_result_status_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.test_result_status_id_seq OWNED BY public.test_result_status.id;
CREATE TABLE public.ward (
    id integer NOT NULL,
    created_at timestamp with time zone DEFAULT now() NOT NULL,
    updated_at timestamp with time zone DEFAULT now() NOT NULL,
    active boolean DEFAULT true NOT NULL,
    ward_name text NOT NULL,
    covid_status integer NOT NULL,
    covid_ward boolean DEFAULT false NOT NULL,
    extra_fields jsonb DEFAULT jsonb_build_object() NOT NULL,
    facility integer NOT NULL,
    floor text NOT NULL,
    gender integer NOT NULL,
    severity integer NOT NULL,
    total_beds integer NOT NULL,
    ventilators integer NOT NULL,
    building_name text NOT NULL,
    available_beds integer NOT NULL,
    available_ventilators integer NOT NULL
);
CREATE SEQUENCE public.ward_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
ALTER SEQUENCE public.ward_id_seq OWNED BY public.ward.id;
ALTER TABLE ONLY public.area ALTER COLUMN id SET DEFAULT nextval('public.area_id_seq'::regclass);
ALTER TABLE ONLY public.collection_center ALTER COLUMN id SET DEFAULT nextval('public.collection_center_id_seq'::regclass);
ALTER TABLE ONLY public.covid_facility_type ALTER COLUMN id SET DEFAULT nextval('public.covid_facility_type_id_seq'::regclass);
ALTER TABLE ONLY public.facility ALTER COLUMN id SET DEFAULT nextval('public.facility_id_seq'::regclass);
ALTER TABLE ONLY public.facility_agreement_status ALTER COLUMN id SET DEFAULT nextval('public.facility_agreement_status_id_seq'::regclass);
ALTER TABLE ONLY public.facility_status ALTER COLUMN id SET DEFAULT nextval('public.facility_status_id_seq'::regclass);
ALTER TABLE ONLY public.gender ALTER COLUMN id SET DEFAULT nextval('public.gender_id_seq'::regclass);
ALTER TABLE ONLY public.hospital_category ALTER COLUMN id SET DEFAULT nextval('public.hospital_category_id_seq'::regclass);
ALTER TABLE ONLY public.institution_type ALTER COLUMN id SET DEFAULT nextval('public.institution_type_id_seq'::regclass);
ALTER TABLE ONLY public.jurisdiction ALTER COLUMN id SET DEFAULT nextval('public.jurisdiction_id_seq'::regclass);
ALTER TABLE ONLY public.lab ALTER COLUMN id SET DEFAULT nextval('public.lab_id_seq'::regclass);
ALTER TABLE ONLY public.patient ALTER COLUMN id SET DEFAULT nextval('public.patient_id_seq'::regclass);
ALTER TABLE ONLY public.patient_clinical_history ALTER COLUMN id SET DEFAULT nextval('public.patient_clinical_history_id_seq'::regclass);
ALTER TABLE ONLY public.patient_discharge ALTER COLUMN id SET DEFAULT nextval('public.patient_discharge_id_seq'::regclass);
ALTER TABLE ONLY public.patient_discharge_reason ALTER COLUMN id SET DEFAULT nextval('public.patient_discharge_reason_id_seq'::regclass);
ALTER TABLE ONLY public.patient_test_detail ALTER COLUMN id SET DEFAULT nextval('public.patient_test_detail_id_seq'::regclass);
ALTER TABLE ONLY public.quarantine_type ALTER COLUMN id SET DEFAULT nextval('public.quarantine_type_id_seq'::regclass);
ALTER TABLE ONLY public.region ALTER COLUMN id SET DEFAULT nextval('public.region_id_seq'::regclass);
ALTER TABLE ONLY public.severity ALTER COLUMN id SET DEFAULT nextval('public.severity_id_seq'::regclass);
ALTER TABLE ONLY public.test_result_status ALTER COLUMN id SET DEFAULT nextval('public.test_result_status_id_seq'::regclass);
ALTER TABLE ONLY public.ward ALTER COLUMN id SET DEFAULT nextval('public.ward_id_seq'::regclass);
ALTER TABLE ONLY public.area
    ADD CONSTRAINT area_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.collection_center
    ADD CONSTRAINT collection_center_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.covid_facility_type
    ADD CONSTRAINT covid_facility_type_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.facility_agreement_status
    ADD CONSTRAINT facility_agreement_status_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.facility
    ADD CONSTRAINT facility_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.facility_status
    ADD CONSTRAINT facility_status_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.gender
    ADD CONSTRAINT gender_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.hospital_category
    ADD CONSTRAINT hospital_category_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.institution_type
    ADD CONSTRAINT institution_type_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.jurisdiction
    ADD CONSTRAINT jurisdiction_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.lab
    ADD CONSTRAINT lab_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.patient_clinical_history
    ADD CONSTRAINT patient_clinical_history_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.patient_discharge
    ADD CONSTRAINT patient_discharge_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.patient_discharge_reason
    ADD CONSTRAINT patient_discharge_reason_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.patient_test_detail
    ADD CONSTRAINT patient_test_detail_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.quarantine_type
    ADD CONSTRAINT quarantine_type_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.region
    ADD CONSTRAINT region_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.severity
    ADD CONSTRAINT severity_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.test_result_status
    ADD CONSTRAINT test_result_status_pkey PRIMARY KEY (id);
ALTER TABLE ONLY public.ward
    ADD CONSTRAINT ward_pkey PRIMARY KEY (id);
CREATE TRIGGER set_public_area_updated_at BEFORE UPDATE ON public.area FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_area_updated_at ON public.area IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_collection_center_updated_at BEFORE UPDATE ON public.collection_center FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_collection_center_updated_at ON public.collection_center IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_covid_facility_type_updated_at BEFORE UPDATE ON public.covid_facility_type FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_covid_facility_type_updated_at ON public.covid_facility_type IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_facility_agreement_status_updated_at BEFORE UPDATE ON public.facility_agreement_status FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_facility_agreement_status_updated_at ON public.facility_agreement_status IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_facility_status_updated_at BEFORE UPDATE ON public.facility_status FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_facility_status_updated_at ON public.facility_status IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_facility_updated_at BEFORE UPDATE ON public.facility FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_facility_updated_at ON public.facility IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_gender_updated_at BEFORE UPDATE ON public.gender FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_gender_updated_at ON public.gender IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_hospital_category_updated_at BEFORE UPDATE ON public.hospital_category FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_hospital_category_updated_at ON public.hospital_category IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_institution_type_updated_at BEFORE UPDATE ON public.institution_type FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_institution_type_updated_at ON public.institution_type IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_jurisdiction_updated_at BEFORE UPDATE ON public.jurisdiction FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_jurisdiction_updated_at ON public.jurisdiction IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_lab_updated_at BEFORE UPDATE ON public.lab FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_lab_updated_at ON public.lab IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_patient_clinical_history_updated_at BEFORE UPDATE ON public.patient_clinical_history FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_patient_clinical_history_updated_at ON public.patient_clinical_history IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_patient_discharge_reason_updated_at BEFORE UPDATE ON public.patient_discharge_reason FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_patient_discharge_reason_updated_at ON public.patient_discharge_reason IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_patient_discharge_updated_at BEFORE UPDATE ON public.patient_discharge FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_patient_discharge_updated_at ON public.patient_discharge IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_patient_test_detail_updated_at BEFORE UPDATE ON public.patient_test_detail FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_patient_test_detail_updated_at ON public.patient_test_detail IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_patient_updated_at BEFORE UPDATE ON public.patient FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_patient_updated_at ON public.patient IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_quarantine_type_updated_at BEFORE UPDATE ON public.quarantine_type FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_quarantine_type_updated_at ON public.quarantine_type IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_region_updated_at BEFORE UPDATE ON public.region FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_region_updated_at ON public.region IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_severity_updated_at BEFORE UPDATE ON public.severity FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_severity_updated_at ON public.severity IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_test_result_status_updated_at BEFORE UPDATE ON public.test_result_status FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_test_result_status_updated_at ON public.test_result_status IS 'trigger to set value of column "updated_at" to current timestamp on row update';
CREATE TRIGGER set_public_ward_updated_at BEFORE UPDATE ON public.ward FOR EACH ROW EXECUTE FUNCTION public.set_current_timestamp_updated_at();
COMMENT ON TRIGGER set_public_ward_updated_at ON public.ward IS 'trigger to set value of column "updated_at" to current timestamp on row update';
ALTER TABLE ONLY public.facility
    ADD CONSTRAINT facility_agreement_status_fkey FOREIGN KEY (agreement_status) REFERENCES public.facility_agreement_status(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.facility
    ADD CONSTRAINT facility_area_fkey FOREIGN KEY (area) REFERENCES public.area(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.facility
    ADD CONSTRAINT facility_covid_facility_type_fkey FOREIGN KEY (covid_facility_type) REFERENCES public.covid_facility_type(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.facility
    ADD CONSTRAINT facility_facility_status_fkey FOREIGN KEY (facility_status) REFERENCES public.facility_status(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.facility
    ADD CONSTRAINT facility_hospital_category_fkey FOREIGN KEY (hospital_category) REFERENCES public.hospital_category(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.facility
    ADD CONSTRAINT facility_institution_type_fkey FOREIGN KEY (institution_type) REFERENCES public.institution_type(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.facility
    ADD CONSTRAINT facility_jurisdiction_fkey FOREIGN KEY (jurisdiction) REFERENCES public.jurisdiction(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.facility
    ADD CONSTRAINT facility_region_fkey FOREIGN KEY (region) REFERENCES public.region(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.patient_discharge
    ADD CONSTRAINT patient_discharge_facility_fkey FOREIGN KEY (facility) REFERENCES public.facility(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.patient_discharge
    ADD CONSTRAINT patient_discharge_quarantine_type_fkey FOREIGN KEY (quarantine_type) REFERENCES public.quarantine_type(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.patient_discharge
    ADD CONSTRAINT patient_discharge_reason_fkey FOREIGN KEY (reason) REFERENCES public.patient_discharge_reason(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.patient
    ADD CONSTRAINT patient_gender_fkey FOREIGN KEY (gender) REFERENCES public.gender(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.patient_test_detail
    ADD CONSTRAINT patient_test_detail_collection_center_fkey FOREIGN KEY (collection_center) REFERENCES public.collection_center(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.patient_test_detail
    ADD CONSTRAINT patient_test_detail_lab_confirming_fkey FOREIGN KEY (lab_confirming) REFERENCES public.lab(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.patient_test_detail
    ADD CONSTRAINT patient_test_detail_result_fkey FOREIGN KEY (result) REFERENCES public.test_result_status(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.patient_test_detail
    ADD CONSTRAINT patient_test_detail_sent_to_fkey FOREIGN KEY (sent_to) REFERENCES public.lab(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.ward
    ADD CONSTRAINT ward_facility_fkey FOREIGN KEY (facility) REFERENCES public.facility(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.ward
    ADD CONSTRAINT ward_gender_fkey FOREIGN KEY (gender) REFERENCES public.gender(id) ON UPDATE CASCADE ON DELETE CASCADE;
ALTER TABLE ONLY public.ward
    ADD CONSTRAINT ward_severity_fkey FOREIGN KEY (severity) REFERENCES public.severity(id) ON UPDATE CASCADE ON DELETE CASCADE;
